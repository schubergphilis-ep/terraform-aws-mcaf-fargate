moved {
  from = aws_route53_record.validation["create"]
  to   = aws_route53_record.validation[0]
}

moved {
  from = aws_iam_role_policy_attachment.task_execution_role
  to   = module.task_execution_role.aws_iam_role_policy_attachment.default["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
}
