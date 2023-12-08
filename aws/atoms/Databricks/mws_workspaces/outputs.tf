output "id" {
  description = "Canonical unique id of the workspace."
  value       = databricks_mws_workspaces.self.id
}

output "workspace_id" {
  description = "Workspace ID"
  value       = databricks_mws_workspaces.self.workspace_id
}

output "workspace_status_message" {
  description = "Updates on workspace status"
  value       = databricks_mws_workspaces.self.workspace_status_message
}

output "workspace_status" {
  description = "Workspace status"
  value       = databricks_mws_workspaces.self.workspace_status
}

output "creation_time" {
  description = "Time the workspace was created"
  value       = databricks_mws_workspaces.self.creation_time
}
output "workspace_url" {
  description = "Workspace URL"
  value       = databricks_mws_workspaces.self.workspace_url
}
