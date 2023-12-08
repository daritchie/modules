<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | ~> 1.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | ~> 1.21 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [databricks_mws_workspaces.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_workspaces) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Databricks account ID | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | aws region | `string` | `"us-east-1"` | no |
| <a name="input_credentials_id"></a> [credentials\_id](#input\_credentials\_id) | Databricks credentials id | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Databricks network id | `string` | n/a | yes |
| <a name="input_storage_configuration_id"></a> [storage\_configuration\_id](#input\_storage\_configuration\_id) | Databricks storage configuration id | `string` | n/a | yes |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | Name of the workspace | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_creation_time"></a> [creation\_time](#output\_creation\_time) | Time the workspace was created |
| <a name="output_id"></a> [id](#output\_id) | Canonical unique id of the workspace. |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | Workspace ID |
| <a name="output_workspace_status"></a> [workspace\_status](#output\_workspace\_status) | Workspace status |
| <a name="output_workspace_status_message"></a> [workspace\_status\_message](#output\_workspace\_status\_message) | Updates on workspace status |
| <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url) | Workspace URL |
<!-- END_TF_DOCS -->