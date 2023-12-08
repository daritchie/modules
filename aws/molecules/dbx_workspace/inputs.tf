variable "aws_region" {
  description = "AWS Region to deploy the workspace"
  type        = string
  nullable    = false
}

variable "databricks_account_id" {
  type = string
}

variable "databricks_client_id" {
  type = string
}

variable "databricks_client_secret" {
  type = string
}

variable "databricks_metastore_id" {
  type = string
}

variable "http_path" {
  description = "Path for data pipeline"
  type        = string
}

variable "kms_master_key_id" {
  description = "The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms."
  type        = string
}

variable "name" {
  type = string
}

variable "s3_iam_resources" {
  description = "A collection of unique arns that allow the instance profile to have access to"
  type        = set(string)
}

variable "security_group_ids" {
  description = "A collection of unique IDs for the security groups that apply to workspace"
  type        = set(string)
}

variable "subnet_ids" {
  description = "A collection of unique VPC subnet IDs"
  type        = set(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

##
## Defaults
##
variable "default_catalog_name" {
  description = "Default catalog used for this assignment"
  type        = string
  default     = "hive_metastore"
}
