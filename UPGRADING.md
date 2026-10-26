# Upgrading Notes

This document captures required refactoring on your part when upgrading to a module version that contains breaking changes.

## Upgrading to v4.0.0

### Key Changes

- This module now creates two separate IAM roles instead of one shared role used as both the task role and the task execution role:
  - `TaskRole-<name>`: the new task role, assumed by the application running in the container.
  - `TaskExecutionRole-<name>`: the existing role, now used only as the task execution role (by ECS/Fargate to pull images, write logs and fetch secrets).
- The `mcaf-role` module has been upgraded to `~> 0.6.0`.

#### Variables

- `role_policy` has been renamed to `task_role_policy`, and is now attached to the new task role only, and no longer to the task execution role.
- `task_execution_role_policy` (new, optional) adds an inline policy to the task execution role. The `AmazonECSTaskExecutionRolePolicy` managed policy is still always attached.

If you use `secrets`, or ECS otherwise needs extra permissions to start the task (for example `secretsmanager:GetSecretValue`, `ssm:GetParameters` or `kms:Decrypt`), move those permissions out of `task_role_policy` (previously `role_policy`) and into `task_execution_role_policy`. Otherwise tasks will fail to start.

#### Outputs

- `task_role_arn` (new) is the ARN of the task role. `task_execution_role_arn` now only refers to the task execution role; if you used it to grant the application access to resources (for example in a KMS key or bucket policy), switch to `task_role_arn`.

## Upgrading to v3.0.0

### Key Changes

- This module now supports scheduled scaling actions for ECS. The default for the `desired_count` has changed to `null` to support this. Validation was added to ensure `desired_count` and `scale_up_action` are not both null.

## Upgrading to v2.0.0

### Key Changes

- This module now requires a minimum AWS provider version of 6.0 to support the `region` parameter. If you are using multiple AWS provider blocks, please read [migrating from multiple provider configurations](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/guides/enhanced-region-support#migrating-from-multiple-provider-configurations).


## Upgrading to v1.0.0

Initial release of the module. These changes are based on the last tag version (`v0.16.5`)

operating_system_family

### Key Changes

Mainly security related changes and some minor refactoring.

#### Variables

The following variables have been modified:

- `load_balancer_deletion_protection` is now `true` by default.
- `log_retention_days` is now configurable and the default value is updated from 30 to 365 days.
- `ssl_policy` is now `ELBSecurityPolicy-TLS13-1-2-2021-06` by default.
