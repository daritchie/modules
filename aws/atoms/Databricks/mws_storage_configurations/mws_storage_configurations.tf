data "databricks_aws_bucket_policy" "self" {
  bucket = module.databricks_rootbucket.ids["databricks-${var.storage_configuration_name}-rootbucket"]
}

module "databricks_rootbucket" {
  source = "../../../molecules/buckets"
  s3_buckets = {
    "databricks-${var.storage_configuration_name}-rootbucket" = {
    }
  }
  kms_master_key_id = var.kms_master_key_id
  tags              = var.tags
}

module "databricks_rootbucket_policy" {
  source = "../../S3/aws_s3_bucket_policy"
  bucket = module.databricks_rootbucket.ids["databricks-${var.storage_configuration_name}-rootbucket"]
  policy = data.databricks_aws_bucket_policy.self.json
}

resource "databricks_mws_storage_configurations" "self" {
  account_id                 = var.account_id
  bucket_name                = module.databricks_rootbucket.ids["databricks-${var.storage_configuration_name}-rootbucket"]
  storage_configuration_name = var.storage_configuration_name
}
