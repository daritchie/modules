module "databricks_metastore_assignment" {
  source = "../../atoms/Databricks/metastore_assignment"
  providers = {
    databricks = databricks.created_workspace
  }
  metastore_id         = "var.databricks_metastore_id"
  workspace_id         = module.databricks_workspace.workspace_id
  default_catalog_name = var.default_catalog_name
  depends_on           = [module.databricks_workspace]
}
