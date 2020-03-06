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
  description = "ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars."
  type        = string
  default     = ""
}


# -----------------------------------------------------------------------------
# Variables: TF-MOD-AWS-IAM-ACCOUNT-SETTINGS
# -----------------------------------------------------------------------------

variable "enabled" {
  description = "Whether or not to create the IAM account alias"
  default     = "true"
}

variable "password_policy_enabled" {
  description = "Whether or not to create the IAM account password policy"
  default     = "true"
}

variable "allow_users_to_change_password" {
  description = "Whether to allow users to change their own password"
  default     = true
}

variable "hard_expiry" {
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  default     = false
}

variable "max_password_age" {
  description = "The number of days that a user's password is valid"
  default     = 0
}

variable "minimum_password_length" {
  description = "Minimum length to require for user passwords"
  default     = 8
}

variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing"
  default     = true
}

variable "require_lowercase_characters" {
  description = "Whether to require lowercase characters for user passwords"
  default     = true
}

variable "require_uppercase_characters" {
  description = "Whether to require uppercase characters for user passwords"
  default     = true
}

variable "require_numbers" {
  description = "Whether to require numbers for user passwords"
  default     = true
}

variable "require_symbols" {
  description = "Whether to require symbols for user passwords"
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


variable "context" {
  type = object({
    namespace           = string
    environment         = string
    stage               = string
    name                = string
    enabled             = bool
    delimiter           = string
    attributes          = list(string)
    label_order         = list(string)
    tags                = map(string)
    additional_tag_map  = map(string)
    regex_replace_chars = string
  })
  default = {
    namespace           = ""
    environment         = ""
    stage               = ""
    name                = ""
    enabled             = true
    delimiter           = ""
    attributes          = []
    label_order         = []
    tags                = {}
    additional_tag_map  = {}
    regex_replace_chars = ""
  }
  description = "Default context to use for passing state between label invocations"
}

