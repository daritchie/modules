resource "databricks_mws_workspaces" "self" {
  account_id               = var.account_id
  workspace_name           = var.workspace_name
  network_id               = var.network_id
  storage_configuration_id = var.storage_configuration_id
  credentials_id           = var.credentials_id
  aws_region               = var.aws_region
}
