module "databricks_token_secrets" {
  source     = "../../molecules/secrets/"
  kms_key_id = var.kms_master_key_id
  tags       = var.tags
  name       = "/databricks/${var.name}"
  secrets = {
    dbx_token = {
      description = "Databricks token for use with pipeline"
      secret_key_value = {
        "http_path" : var.http_path,
        "server_hostname" : module.databricks_workspace.workspace_url,
        "token" : databricks_token.pat.token_value
      }
    }
  }
  depends_on = [module.databricks_workspace]
}
