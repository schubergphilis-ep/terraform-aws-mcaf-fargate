mock_provider "aws" {
  # Policy arguments are validated as JSON, even with a mocked provider.
  mock_data "aws_iam_policy_document" {
    defaults = {
      json = "{}"
    }
  }
}

override_resource {
  target = module.task_role.aws_iam_role.default
  values = {
    arn = "arn:aws:iam::123456789012:role/TaskRole-test"
  }
}

override_resource {
  target = module.task_execution_role.aws_iam_role.default
  values = {
    arn = "arn:aws:iam::123456789012:role/TaskExecutionRole-test"
  }
}

variables {
  name           = "test"
  image          = "nginx:latest"
  desired_count  = 1
  ecs_subnet_ids = ["subnet-12345678"]
  vpc_id         = "vpc-12345678"

  task_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = ["s3:GetObject"]
      Resource = "*"
    }]
  })
}

run "default_role_names" {
  command = plan

  assert {
    condition     = module.task_role.name == "TaskRole-test"
    error_message = "Expected the task role name to be TaskRole-test, got ${module.task_role.name}."
  }

  assert {
    condition     = module.task_execution_role.name == "TaskExecutionRole-test"
    error_message = "Expected the task execution role name to be TaskExecutionRole-test, got ${module.task_execution_role.name}."
  }
}

run "postfixed_role_names" {
  command = plan

  variables {
    postfix = true
  }

  assert {
    condition     = module.task_role.name == "TaskRole-testRole"
    error_message = "Expected the task role name to be TaskRole-testRole, got ${module.task_role.name}."
  }

  assert {
    condition     = module.task_execution_role.name == "TaskExecutionRole-testRole"
    error_message = "Expected the task execution role name to be TaskExecutionRole-testRole, got ${module.task_execution_role.name}."
  }
}

run "task_definition_uses_separate_roles" {
  command = apply

  assert {
    condition     = aws_ecs_task_definition.default.task_role_arn == "arn:aws:iam::123456789012:role/TaskRole-test"
    error_message = "Expected the task definition to use the task role, got ${aws_ecs_task_definition.default.task_role_arn}."
  }

  assert {
    condition     = aws_ecs_task_definition.default.execution_role_arn == "arn:aws:iam::123456789012:role/TaskExecutionRole-test"
    error_message = "Expected the task definition to use the task execution role, got ${aws_ecs_task_definition.default.execution_role_arn}."
  }

  assert {
    condition     = aws_ecs_task_definition.default.task_role_arn != aws_ecs_task_definition.default.execution_role_arn
    error_message = "Expected the task role and task execution role to be different roles."
  }
}

run "role_arn_outputs" {
  command = apply

  assert {
    condition     = output.task_role_arn == "arn:aws:iam::123456789012:role/TaskRole-test"
    error_message = "Expected task_role_arn to be the task role ARN, got ${output.task_role_arn}."
  }

  assert {
    condition     = output.task_execution_role_arn == "arn:aws:iam::123456789012:role/TaskExecutionRole-test"
    error_message = "Expected task_execution_role_arn to be the task execution role ARN, got ${output.task_execution_role_arn}."
  }
}
