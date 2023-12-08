output "id" {
  description = "Canonical unique id of the mws credentials."
  value       = databricks_mws_credentials.self.id
}

output "creation_time" {
  description = "Time of credentials registration"
  value       = databricks_mws_credentials.self.creation_time
}

output "credentials_id" {
  description = "Identifier of credentials"
  value       = databricks_mws_credentials.self.credentials_id
}

output "role_name" {
  description = "Name of cross-account role created for databricks"
  value       = module.databricks_iam_role.name
}
