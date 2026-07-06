# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.0](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.6...v1.0.0) (2025-10-20)


### ⚠ BREAKING CHANGES

* Add region support ([#15](https://github.com/schubergphilis/terraform-aws-mcaf-ses/pull/15))

### 🚀 Features

* Add region support ([#15](https://github.com/schubergphilis/terraform-aws-mcaf-ses/pull/15)) ([7523b55](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/commit/7523b554474a41aac2a784f43732ec5673bcf197))

## [0.1.6](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.5...v0.1.6) (2025-03-14)


### 🐛 Fixes

* SMTP user requires ses:SendRawEmail permissions on arn:aws:ses:<REGION>:<ACCOUNT>:identity/<MAIL_TO_ADDRESS> in order to be able to send mail. ([#14](https://github.com/schubergphilis/terraform-aws-mcaf-ses/pull/14)) ([6dff22b](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/commit/6dff22b667d7985e5192dc8fff715d3672d5930f))

## [0.1.5](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.4...v0.1.5) (2025-03-06)


### 🐛 Fixes

* 'depends on resource attributes that cannot be determined until apply' error, by setting `create_policy = true`. ([#13](https://github.com/schubergphilis/terraform-aws-mcaf-ses/pull/13)) ([ad087b3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/commit/ad087b30c05cfa58e2f185b2335d1fd8bd829a86))

## [0.1.4](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.3...v0.1.4) (2024-09-06)


### 🐛 Fixes

* correct for central workflow ([#11](https://github.com/schubergphilis/terraform-aws-mcaf-ses/pull/11)) ([dbf4184](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/commit/dbf4184c17da856d79041f653e9bd324d154d0de))

## [0.1.3](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.2...v0.1.3) (2024-09-05)

## [0.1.2](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.1...v0.1.2) (2022-10-06)

## [0.1.1](https://github.com/schubergphilis-ep/terraform-aws-mcaf-ses/compare/v0.1.0...v0.1.1) (2022-09-29)

## 0.1.0 (2021-12-01)

