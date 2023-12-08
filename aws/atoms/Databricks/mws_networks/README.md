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
| [databricks_mws_networks.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_networks) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Databricks account ID | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name under which this network is registered | `string` | n/a | yes |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | A collection of unique IDs for the security groups that apply to workspace | `set(string)` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A collection of unique VPC subnet IDs | `set(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Canonical unique id of the mws network. |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | ID of the network to be used for resource. |
| <a name="output_vpc_status"></a> [vpc\_status](#output\_vpc\_status) | VPC attachment status |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | VPC attachment status |
<!-- END_TF_DOCS -->