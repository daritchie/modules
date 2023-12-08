## There can only be one metastore per Databricks account per region.  
## If a metastore is already created you must use this atom to 
## assign it to a created workspace
resource "databricks_metastore_assignment" "self" {
  metastore_id         = var.metastore_id
  workspace_id         = var.workspace_id
  default_catalog_name = var.default_catalog_name
}
