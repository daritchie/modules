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

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_databricks_iam_instance_profile"></a> [databricks\_iam\_instance\_profile](#module\_databricks\_iam\_instance\_profile) | ../../IAM/aws_iam_instance_profile | n/a |
| <a name="module_databricks_iam_policy"></a> [databricks\_iam\_policy](#module\_databricks\_iam\_policy) | ../../IAM/aws_iam_policy | n/a |
| <a name="module_databricks_iam_role"></a> [databricks\_iam\_role](#module\_databricks\_iam\_role) | ../../IAM/aws_iam_role | n/a |
| <a name="module_policies"></a> [policies](#module\_policies) | ../../../data/policies | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role_policy.databricks_s3_kms_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.self](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [databricks_group_instance_profile.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group_instance_profile) | resource |
| [databricks_instance_profile.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/instance_profile) | resource |
| [aws_iam_policy_document.self](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [databricks_group.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_crossaccount_role_name"></a> [crossaccount\_role\_name](#input\_crossaccount\_role\_name) | Cross account role created for the databricks workspace | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of instance profile | `string` | n/a | yes |
| <a name="input_s3_iam_resources"></a> [s3\_iam\_resources](#input\_s3\_iam\_resources) | A collection of unique arns that allow the instance profile to have access to | `set(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN for EC2 Instance Profile, that is registered with Databricks. |
| <a name="output_group_id"></a> [group\_id](#output\_group\_id) | Group ID associated with instance profile. |
<!-- END_TF_DOCS -->