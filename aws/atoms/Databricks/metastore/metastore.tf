## There can only be one metastore per Databricks account per region.  
## If a metastore is already created you must use the 
## databricks_metastore_assignment atom to assign it to a created workspace
resource "databricks_metastore" "self" {
  name         = var.name
  storage_root = var.storage_root
  owner        = var.owner
}
