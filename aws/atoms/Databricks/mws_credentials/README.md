<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | ~> 1.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | ~> 1.21 |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_databricks_iam_role"></a> [databricks\_iam\_role](#module\_databricks\_iam\_role) | ../../IAM/aws_iam_role | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role_policy.self](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [databricks_mws_credentials.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_credentials) | resource |
| [time_sleep.wait](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [databricks_aws_assume_role_policy.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/data-sources/aws_assume_role_policy) | data source |
| [databricks_aws_crossaccount_policy.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/data-sources/aws_crossaccount_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Databricks account ID | `string` | n/a | yes |
| <a name="input_credentials_name"></a> [credentials\_name](#input\_credentials\_name) | Name of credentials to register | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_creation_time"></a> [creation\_time](#output\_creation\_time) | Time of credentials registration |
| <a name="output_credentials_id"></a> [credentials\_id](#output\_credentials\_id) | Identifier of credentials |
| <a name="output_id"></a> [id](#output\_id) | Canonical unique id of the mws credentials. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of cross-account role created for databricks |
<!-- END_TF_DOCS -->