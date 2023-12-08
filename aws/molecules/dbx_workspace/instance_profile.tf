module "databricks_instance_profile" {
  source = "../../atoms/Databricks/instance_profile"
  providers = {
    databricks = databricks.created_workspace
  }
  name                   = var.name
  crossaccount_role_name = module.databricks_credentials.role_name
  s3_iam_resources       = var.s3_iam_resources
  tags                   = var.tags
  depends_on             = [module.databricks_workspace]
}
