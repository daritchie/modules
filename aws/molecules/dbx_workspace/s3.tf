module "databricks_storage_configuration" {
  source = "../../atoms/Databricks/mws_storage_configurations"
  providers = {
    databricks = databricks.mws
  }
  account_id                 = var.databricks_account_id
  storage_configuration_name = var.name
  kms_master_key_id          = var.kms_master_key_id
  tags                       = var.tags
}
