mock_provider "aws" {
  # Policy arguments are validated as JSON, even with a mocked provider.
  mock_data "aws_iam_policy_document" {
    defaults = {
      json = "{}"
    }
  }
}

variables {
  name             = "test"
  image            = "nginx:latest"
  desired_count    = 1
  ecs_subnet_ids   = ["subnet-12345678"]
  vpc_id           = "vpc-12345678"
  task_role_policy = "{}"
}

run "desired_count_or_scale_up_action_required" {
  command = plan

  variables {
    desired_count = null
  }

  expect_failures = [var.desired_count]
}

run "execute_command_requires_writable_root_filesystem" {
  command = plan

  variables {
    enable_execute_command = true
  }

  expect_failures = [var.enable_execute_command]
}

run "execute_command_with_writable_root_filesystem" {
  command = plan

  variables {
    enable_execute_command   = true
    readonly_root_filesystem = false
  }

  assert {
    condition     = aws_ecs_service.default[0].enable_execute_command
    error_message = "Expected ECS Exec to be enabled on the service."
  }
}

run "invalid_architecture" {
  command = plan

  variables {
    architecture = "i386"
  }

  expect_failures = [var.architecture]
}

run "invalid_protocol" {
  command = plan

  variables {
    protocol = "UDP"
  }

  expect_failures = [var.protocol]
}

run "invalid_service_launch_type" {
  command = plan

  variables {
    service_launch_type = "EXTERNAL"
  }

  expect_failures = [var.service_launch_type]
}
