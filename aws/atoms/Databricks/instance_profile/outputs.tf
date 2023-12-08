output "arn" {
  description = "ARN for EC2 Instance Profile, that is registered with Databricks."
  value       = databricks_instance_profile.self.id
}

output "group_id" {
  description = "Group ID associated with instance profile."
  value       = databricks_group_instance_profile.self.id
}
