provider "aws" {
  region = "eu-west-1"
}

// Simple cross-account send authorization on the domain identity
data "aws_iam_policy_document" "allow_account" {
  statement {
    actions   = ["ses:SendEmail", "ses:SendRawEmail"]
    resources = ["*"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::222222222222:root"]
    }
  }
}

// Org-wide send authorization using aws:PrincipalOrgID
data "aws_iam_policy_document" "allow_org" {
  statement {
    actions   = ["ses:SendEmail", "ses:SendRawEmail"]
    resources = ["*"]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:PrincipalOrgID"
      values   = ["o-abc123xyz"]
    }
  }
}

module "example" {
  #checkov:skip=CKV_AWS_272: This module does not support lambda code signing at the moment
  source = "../.."

  providers = { aws = aws, aws.route53 = aws }
  domain    = "example.com"

  policies = {
    "allow-account-222" = data.aws_iam_policy_document.allow_account.json
    "allow-org"         = data.aws_iam_policy_document.allow_org.json
  }
}
