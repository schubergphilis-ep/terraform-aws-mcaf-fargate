# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [3.2.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v3.1.1...v3.2.0) (2026-06-04)


### 🚀 Features

* add an optional working_directory for the task definition ([#89](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/89)) ([a171dc5](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/a171dc54270218ad133bf58e586c2ab740859bd7))

## [3.1.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v2.1.2...v3.1.1) (2026-04-30)


### 🐛 Fixes

* revert validation record to count-based approach ([#88](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/88)) ([c078a4c](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/c078a4c20ad9cf1fab5d8fed8696a51acbd80e37))

## [2.1.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v3.1.0...v2.1.2) (2026-04-30)

## [3.1.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v3.0.0...v3.1.0) (2026-04-16)


### 🚀 Features

* add optional user for task definition ([#87](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/87)) ([8e633ce](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/8e633ce613b54f2706f54702fd577c5a49720d63))

## [3.0.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v2.2.0...v3.0.0) (2026-02-18)


### 🚀 Features

* breaking: Add offhours scaling support ([#86](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/86)) ([f4accc8](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/f4accc8c5f69cf7945d8a1595c4a81e9cc9de666))

## [2.2.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v2.1.0...v2.2.0) (2025-11-25)


### 🚀 Features

* added variable to support ECS exec ([#84](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/84)) ([49f3b60](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/49f3b609e190c62a645abceb5ac8f424bb5c57d0))

## [2.1.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v2.0.0...v2.1.0) (2025-10-27)


### 🚀 Features

* added lb arn as output ([#83](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/83)) ([5dcbd67](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/5dcbd67aa5cecb3694a286daae26fc5c21acc388))

## [2.0.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v1.3.0...v2.0.0) (2025-09-30)


### ⚠ BREAKING CHANGES

* Add region support ([#81](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/81))

### 🚀 Features

* Add region support ([#81](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/81)) ([b4073ce](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/b4073ce711d36c492961b56fd46d7c8db431c647))

## [1.3.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v1.2.0...v1.3.0) (2025-08-08)


### 🚀 Features

* Add support for command property, fixes to architecture support ([#72](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/72)) ([77282f6](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/77282f69c4df95a98f9d7a584075e8036d882f72))
* Add support for command property, fixes to architecture support ([#72](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/72)) ([77282f6](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/77282f69c4df95a98f9d7a584075e8036d882f72))

## [1.2.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v1.1.1...v1.2.0) (2025-06-27)


### 🚀 Features

* As a best practise, always enable backup for the EFS ([#78](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/78)) ([99628ab](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/99628abbf170284a9bb0a3cd91aa4a84208ccd61))

### 🐛 Fixes

* Correct SSL Policy ([#79](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/79)) ([f6caefb](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/f6caefb262996e6ec847d57c573c06612bd456ef))
* Correct SSL Policy ([#79](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/79)) ([f6caefb](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/f6caefb262996e6ec847d57c573c06612bd456ef))

## [1.1.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v1.1.0...v1.1.1) (2025-06-13)


### 🐛 Fixes

* Add moved to prevent recreation ([#77](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/77)) ([343a20a](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/343a20a4016d11ea7a978d4791d374287adb2dcd))

## [1.1.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v1.0.0...v1.1.0) (2025-06-13)


### 🚀 Features

* Update and validate SSL policy ([#76](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/76)) ([f487a75](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/f487a750aeab003ba3c386bd149a701867776e00))

### 🐛 Fixes

* Fix validation record ([#73](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/73)) ([dc2b15b](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/dc2b15bd1eb5508af618d63ed90773d955bee114))

## [1.0.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.16.5...v1.0.0) (2024-10-17)


### 🚀 Features

* enhancement: adding ECS service arn as output ([#71](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/71)) ([6486ee1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/6486ee1ed719783ae518d3edc232ac4df83272a7))
* breaking: Update code to onboard for new Github workflows ([#69](https://github.com/schubergphilis/terraform-aws-mcaf-fargate/pull/69)) ([cc44b1b](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/commit/cc44b1beed97f49bade55ee21eac620c696e8289))

## [0.16.5](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.16.4...v0.16.5) (2024-08-15)

## [0.16.4](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.16.3...v0.16.4) (2024-04-15)

## [0.16.3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.16.2...v0.16.3) (2023-10-06)

## [0.16.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.16.1...v0.16.2) (2023-08-31)

## [0.16.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.16.0...v0.16.1) (2023-08-29)

## [0.16.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.15.0...v0.16.0) (2023-07-27)

## [0.15.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.15.1...v0.15.0) (2023-07-06)

## [0.15.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.14.2...v0.15.1) (2023-07-06)

## [0.14.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.14.0...v0.14.2) (2023-03-08)

## [0.14.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.14.1...v0.14.0) (2023-02-07)

## [0.14.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.13.2...v0.14.1) (2023-02-07)

## [0.13.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.13.1...v0.13.2) (2022-12-07)

## [0.13.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.13.0...v0.13.1) (2022-12-06)

## [0.13.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.12.0...v0.13.0) (2022-10-31)

## [0.12.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.11.0...v0.12.0) (2022-07-26)

## [0.11.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.10.0...v0.11.0) (2022-03-07)

## [0.10.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v.0.9.0...v0.10.0) (2021-11-02)

## [.0.9.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v.0.9.1...v.0.9.0) (2021-07-30)

## [.0.9.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.11...v.0.9.1) (2021-07-30)

## [0.8.11](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.10...v0.8.11) (2021-07-26)

## [0.8.10](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.9...v0.8.10) (2021-07-19)

## [0.8.9](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.7...v0.8.9) (2021-06-16)

## [0.8.7](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.8...v0.8.7) (2021-04-26)

## [0.8.8](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.6...v0.8.8) (2021-04-26)

## [0.8.6](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.5...v0.8.6) (2021-04-20)

## [0.8.5](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.3...v0.8.5) (2021-03-01)

## [0.8.3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.4...v0.8.3) (2020-11-17)

## [0.8.4](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.2...v0.8.4) (2020-11-17)

## [0.8.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.1...v0.8.2) (2020-11-09)

## [0.8.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.8.0...v0.8.1) (2020-11-06)

## [0.8.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.6.3...v0.8.0) (2020-11-05)

## [0.6.3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.7.0...v0.6.3) (2020-11-03)

## [0.7.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.6.0...v0.7.0) (2020-11-03)

## [0.6.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.6.1...v0.6.0) (2020-10-27)

## [0.6.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.6.2...v0.6.1) (2020-10-27)

## [0.6.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.5.0...v0.6.2) (2020-10-27)

## [0.5.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.4.0...v0.5.0) (2020-10-12)

## [0.4.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.3.0...v0.4.0) (2020-09-17)

## [0.3.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.2.1...v0.3.0) (2020-08-03)

## [0.2.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.2.0...v0.2.1) (2020-04-29)

## [0.2.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.9...v0.2.0) (2020-04-07)

## [0.1.9](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.8...v0.1.9) (2020-03-28)

## [0.1.8](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.7...v0.1.8) (2020-01-22)

## [0.1.7](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.6...v0.1.7) (2019-12-09)

## [0.1.6](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.5...v0.1.6) (2019-12-03)

## [0.1.5](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.4...v0.1.5) (2019-11-12)

## [0.1.4](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.2...v0.1.4) (2019-11-11)

## [0.1.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.3...v0.1.2) (2019-10-10)

## [0.1.3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.1...v0.1.3) (2019-10-10)

## [0.1.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-fargate/compare/v0.1.0...v0.1.1) (2019-09-06)

## 0.1.0 (2019-08-22)

