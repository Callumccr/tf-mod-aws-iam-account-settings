## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allow\_users\_to\_change\_password | Whether to allow users to change their own password | `bool` | `true` | no |
| attributes | (Optional) - Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | (Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_assume\_role\_external\_id | (Optional) - The external ID to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_assume\_role\_session\_name | (Optional) - The session name to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| delimiter | (Optional) - Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enabled | Whether or not to create the IAM account alias | `string` | `"true"` | no |
| environment | (Optional) - Environment, e.g. 'dev', 'qa', 'staging', 'prod' | `string` | `""` | no |
| hard\_expiry | Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset) | `bool` | `false` | no |
| max\_password\_age | The number of days that a user's password is valid | `number` | `0` | no |
| minimum\_password\_length | Minimum length to require for user passwords | `number` | `8` | no |
| name | (Optional) - Solution name, e.g. 'vault', 'consul', 'keycloak', 'k8s', or 'baseline' | `string` | `""` | no |
| namespace | (Optional) - Namespace, which could be your abbreviated product team, e.g. 'rci', 'mi', 'hp', or 'core' | `string` | `""` | no |
| password\_policy\_enabled | Whether or not to create the IAM account password policy | `string` | `"true"` | no |
| password\_reuse\_prevention | The number of previous passwords that users are prevented from reusing | `bool` | `true` | no |
| require\_lowercase\_characters | Whether to require lowercase characters for user passwords | `bool` | `true` | no |
| require\_numbers | Whether to require numbers for user passwords | `bool` | `true` | no |
| require\_symbols | Whether to require symbols for user passwords | `bool` | `true` | no |
| require\_uppercase\_characters | Whether to require uppercase characters for user passwords | `bool` | `true` | no |
| tags | (Optional) - Additional tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| account\_alias | IAM account alias |
| minimum\_password\_length | IAM account minimum password length |
| signin\_url | IAM users sign-in URL |

