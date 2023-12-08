data "databricks_aws_assume_role_policy" "self" {
  external_id = var.account_id
}

data "databricks_aws_crossaccount_policy" "self" {
}

module "databricks_iam_role" {
  source             = "../../IAM/aws_iam_role"
  description        = "IAM Role for databricks"
  name               = "${var.credentials_name}-dbx"
  assume_role_policy = data.databricks_aws_assume_role_policy.self.json
  tags               = var.tags
}

resource "aws_iam_role_policy" "self" {
  name       = "${var.credentials_name}-dbx"
  role       = module.databricks_iam_role.id
  policy     = data.databricks_aws_crossaccount_policy.self.json
  depends_on = [module.databricks_iam_role]
}

resource "databricks_mws_credentials" "self" {
  account_id       = var.account_id
  credentials_name = var.credentials_name
  role_arn         = module.databricks_iam_role.arn
  depends_on = [
    aws_iam_role_policy.self,
    time_sleep.wait
  ]
}

resource "time_sleep" "wait" {
  depends_on      = [module.databricks_iam_role]
  create_duration = "10s"
}
