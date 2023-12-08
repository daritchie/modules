output "workspace" {
  value = {
    id    = module.databricks_workspace.workspace_id
    url   = module.databricks_workspace.workspace_url
    token = databricks_token.pat.token_value
  }
}
