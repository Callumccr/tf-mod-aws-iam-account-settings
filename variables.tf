# -----------------------------------------------------------------------------
# Variables: Common AWS Provider - Autoloaded from Terragrunt
# -----------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars."
  type        = string
  default     = ""
}

variable "aws_account_id" {
  description = "The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars"
  type        = string
  default     = ""
}

variable "aws_assume_role_arn" {
  description = "(Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars."
  type        = string
  default     = ""
}

variable "aws_assume_role_session_name" {
  description = "(Optional) - The session name to use when making the AssumeRole call."
  type        = string
  default     = ""
}

variable "aws_assume_role_external_id" {
  description = "(Optional) - The external ID to use when making the AssumeRole call."
  type        = string
  default     = ""
}
# -----------------------------------------------------------------------------
# Variables: TF-MOD-AWS-IAM-ACCOUNT-SETTINGS
# -----------------------------------------------------------------------------

variable "enabled" {
  description = "(Optional) - Whether or not to create the IAM account alias"
  type        = bool
  default     = true
}
variable "password_policy_enabled" {
  description = "(Optional) - Whether or not to create the IAM account password policy"
  type        = bool
  default     = true
}
variable "allow_users_to_change_password" {
  description = "(Optional) - Whether to allow users to change their own password"
  type        = bool
  default     = true
}
variable "hard_expiry" {
  description = "(Optional) - Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  type        = bool
  default     = false
}
variable "max_password_age" {
  description = "(Optional) - The number of days that a user's password is valid"
  type        = number
  default     = 0
}
variable "minimum_password_length" {
  description = "(Optional) - Minimum length to require for user passwords"
  type        = number
  default     = 8
}
variable "password_reuse_prevention" {
  description = "(Optional) - The number of previous passwords that users are prevented from reusing"
  type        = number
  default     = 10
}
variable "require_lowercase_characters" {
  description = "(Optional) - Whether to require lowercase characters for user passwords"
  type        = bool
  default     = true
}
variable "require_uppercase_characters" {
  description = "(Optional) - Whether to require uppercase characters for user passwords"
  type        = bool
  default     = true
}
variable "require_numbers" {
  description = "(Optional) - Whether to require numbers for user passwords"
  type        = bool
  default     = true
}
variable "require_symbols" {
  description = "(Optional) - Whether to require symbols for user passwords"
  type        = bool
  default     = true
}

# -----------------------------------------------------------------------------
# Variables: TF-MOD-LABEL
# -----------------------------------------------------------------------------

variable "namespace" {
  type        = string
  default     = ""
  description = "(Optional) - Namespace, which could be your abbreviated product team, e.g. 'rci', 'mi', 'hp', or 'core'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "(Optional) - Environment, e.g. 'dev', 'qa', 'staging', 'prod'"
}

variable "name" {
  type        = string
  default     = ""
  description = "(Optional) - Solution name, e.g. 'vault', 'consul', 'keycloak', 'k8s', or 'baseline'"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "(Optional) - Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "(Optional) - Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) - Additional tags"
}
