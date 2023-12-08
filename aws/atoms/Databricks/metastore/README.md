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
| [databricks_metastore.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of metastore | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | (Optional) Username/groupname/sp application\_id of the metastore owner | `string` | n/a | yes |
| <a name="input_storage_root"></a> [storage\_root](#input\_storage\_root) | Path on cloud storage account, where managed databricks\_table are stored. Change forces creation of a new resource | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Canonical unique id of the mws credentials. |
<!-- END_TF_DOCS -->