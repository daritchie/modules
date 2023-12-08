output "id" {
  description = "Canonical unique id of the mws storage configuration."
  value       = databricks_mws_storage_configurations.self.id
}

output "storage_configuration_id" {
  description = "ID of the storage config to be used for resource."
  value       = databricks_mws_storage_configurations.self.storage_configuration_id
}
