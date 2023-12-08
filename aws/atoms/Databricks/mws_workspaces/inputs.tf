variable "account_id" {
  description = "Databricks account ID"
  type        = string
}

variable "credentials_id" {
  description = "Databricks credentials id"
  type        = string
}

variable "network_id" {
  description = "Databricks network id"
  type        = string
}

variable "storage_configuration_id" {
  description = "Databricks storage configuration id"
  type        = string
}

variable "workspace_name" {
  description = "Name of the workspace"
  type        = string
}

##
## Defaults
##
variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}
