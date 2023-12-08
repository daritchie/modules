variable "metastore_id" {
  description = "ID of the metastore for the assignment"
  type        = string
}

variable "workspace_id" {
  description = "ID of the workspace for the assignment"
  type        = string
}

##
## Defaults
##
variable "default_catalog_name" {
  description = "Default catalog used for this assignment"
  type        = string
  default     = "hive_metastore"
}
