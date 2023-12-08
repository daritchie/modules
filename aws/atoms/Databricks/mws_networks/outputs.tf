output "id" {
  description = "Canonical unique id of the mws network."
  value       = databricks_mws_networks.self.id
}

output "network_id" {
  description = "ID of the network to be used for resource."
  value       = databricks_mws_networks.self.network_id
}

output "vpc_status" {
  description = "VPC attachment status"
  value       = databricks_mws_networks.self.vpc_status
}

output "workspace_id" {
  description = "VPC attachment status"
  value       = databricks_mws_networks.self.workspace_id
}
