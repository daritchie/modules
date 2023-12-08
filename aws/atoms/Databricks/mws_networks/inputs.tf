variable "account_id" {
  description = "Databricks account ID"
  type        = string
}

variable "network_name" {
  description = "Name under which this network is registered"
  type        = string
}

variable "security_group_ids" {
  description = "A collection of unique IDs for the security groups that apply to workspace"
  type        = set(string)
}

variable "subnet_ids" {
  description = "A collection of unique VPC subnet IDs"
  type        = set(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
