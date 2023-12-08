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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_databricks_rootbucket"></a> [databricks\_rootbucket](#module\_databricks\_rootbucket) | ../../../molecules/buckets | n/a |
| <a name="module_databricks_rootbucket_policy"></a> [databricks\_rootbucket\_policy](#module\_databricks\_rootbucket\_policy) | ../../S3/aws_s3_bucket_policy | n/a |

## Resources

| Name | Type |
|------|------|
| [databricks_mws_storage_configurations.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_storage_configurations) | resource |
| [databricks_aws_bucket_policy.self](https://registry.terraform.io/providers/databricks/databricks/latest/docs/data-sources/aws_bucket_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Databricks account ID | `string` | n/a | yes |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse\_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse\_algorithm is aws:kms. | `string` | n/a | yes |
| <a name="input_storage_configuration_name"></a> [storage\_configuration\_name](#input\_storage\_configuration\_name) | Name under which this storage configuration is stored | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Canonical unique id of the mws storage configuration. |
| <a name="output_storage_configuration_id"></a> [storage\_configuration\_id](#output\_storage\_configuration\_id) | ID of the storage config to be used for resource. |
<!-- END_TF_DOCS -->