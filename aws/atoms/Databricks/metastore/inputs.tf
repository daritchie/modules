variable "name" {
  description = "Name of metastore"
  type        = string
}

variable "storage_root" {
  description = "Path on cloud storage account, where managed databricks_table are stored. Change forces creation of a new resource"
  type        = string
}

##
## Defaults
##
variable "owner" {
  description = "(Optional) Username/groupname/sp application_id of the metastore owner"
  type        = string
  nullable    = false
}
