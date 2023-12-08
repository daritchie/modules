module "databricks_workspace" {
  source = "../../atoms/Databricks/mws_workspaces"
  providers = {
    databricks = databricks.mws
  }
  account_id     = var.databricks_account_id
  aws_region     = var.aws_region
  workspace_name = var.name

  credentials_id           = module.databricks_credentials.credentials_id
  storage_configuration_id = module.databricks_storage_configuration.storage_configuration_id
  network_id               = module.databricks_network.network_id
  depends_on = [
    module.databricks_storage_configuration,
    module.databricks_network,
    module.databricks_credentials
  ]
}

resource "databricks_token" "pat" {
  provider   = databricks.created_workspace
  comment    = "Terraform Provisioning"
  depends_on = [module.databricks_workspace]
}
