variable "crossaccount_role_name" {
  description = "Cross account role created for the databricks workspace"
  type        = string
}

variable "name" {
  description = "Name of instance profile"
  type        = string
}

variable "s3_iam_resources" {
  description = "A collection of unique arns that allow the instance profile to have access to"
  type        = set(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
