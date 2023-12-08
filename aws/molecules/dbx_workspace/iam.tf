module "databricks_credentials" {
  source = "../../atoms/Databricks/mws_credentials"
  providers = {
    databricks = databricks.mws
  }
  account_id       = var.databricks_account_id
  credentials_name = var.name
  tags             = var.tags
}
