<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | ~> 1.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_databricks.created_workspace"></a> [databricks.created\_workspace](#provider\_databricks.created\_workspace) | ~> 1.21 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_databricks_credentials"></a> [databricks\_credentials](#module\_databricks\_credentials) | ../../atoms/Databricks/mws_credentials | n/a |
| <a name="module_databricks_instance_profile"></a> [databricks\_instance\_profile](#module\_databricks\_instance\_profile) | ../../atoms/Databricks/instance_profile | n/a |
| <a name="module_databricks_metastore_assignment"></a> [databricks\_metastore\_assignment](#module\_databricks\_metastore\_assignment) | ../../atoms/Databricks/metastore_assignment | n/a |
| <a name="module_databricks_network"></a> [databricks\_network](#module\_databricks\_network) | ../../atoms/Databricks/mws_networks | n/a |
| <a name="module_databricks_storage_configuration"></a> [databricks\_storage\_configuration](#module\_databricks\_storage\_configuration) | ../../atoms/Databricks/mws_storage_configurations | n/a |
| <a name="module_databricks_token_secrets"></a> [databricks\_token\_secrets](#module\_databricks\_token\_secrets) | ../../molecules/secrets/ | n/a |
| <a name="module_databricks_workspace"></a> [databricks\_workspace](#module\_databricks\_workspace) | ../../atoms/Databricks/mws_workspaces | n/a |

## Resources

| Name | Type |
|------|------|
| [databricks_token.pat](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region to deploy the workspace | `string` | n/a | yes |
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | n/a | `string` | n/a | yes |
| <a name="input_databricks_client_id"></a> [databricks\_client\_id](#input\_databricks\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_databricks_client_secret"></a> [databricks\_client\_secret](#input\_databricks\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_default_catalog_name"></a> [default\_catalog\_name](#input\_default\_catalog\_name) | Default catalog used for this assignment | `string` | `"hive_metastore"` | no |
| <a name="input_http_path"></a> [http\_path](#input\_http\_path) | Path for data pipeline | `string` | n/a | yes |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse\_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse\_algorithm is aws:kms. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_s3_iam_resources"></a> [s3\_iam\_resources](#input\_s3\_iam\_resources) | A collection of unique arns that allow the instance profile to have access to | `set(string)` | n/a | yes |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | A collection of unique IDs for the security groups that apply to workspace | `set(string)` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A collection of unique VPC subnet IDs | `set(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace"></a> [workspace](#output\_workspace) | n/a |
<!-- END_TF_DOCS -->