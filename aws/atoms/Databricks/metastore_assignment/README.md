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
| [databricks_metastore_assignment.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_catalog_name"></a> [default\_catalog\_name](#input\_default\_catalog\_name) | Default catalog used for this assignment | `string` | `"hive_metastore"` | no |
| <a name="input_metastore_id"></a> [metastore\_id](#input\_metastore\_id) | ID of the metastore for the assignment | `string` | n/a | yes |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | ID of the workspace for the assignment | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->