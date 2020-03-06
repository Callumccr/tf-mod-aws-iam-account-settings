locals {
  account_alias = var.enabled == "true" ? join("", aws_iam_account_alias.default.*.account_alias) : data.aws_caller_identity.default.account_id
}