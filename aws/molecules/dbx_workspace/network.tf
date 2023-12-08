module "databricks_network" {
  source = "../../atoms/Databricks/mws_networks"
  providers = {
    databricks = databricks.mws
  }
  account_id         = var.databricks_account_id
  network_name       = var.name
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
  security_group_ids = var.security_group_ids
}
