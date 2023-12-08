variable "account_id" {
  description = "Databricks account ID"
  type        = string
}

variable "credentials_name" {
  description = "Name of credentials to register"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
