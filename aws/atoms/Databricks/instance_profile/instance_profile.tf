module "policies" {
  source = "../../../data/policies"
}

data "aws_iam_policy_document" "self" {
  statement {
    effect    = "Allow"
    actions   = ["iam:PassRole"]
    resources = [module.databricks_iam_role.arn]
  }
}

module "databricks_iam_role" {
  source             = "../../IAM/aws_iam_role"
  description        = "Role for shared access for ec2 and s3"
  name               = "${var.name}-dbx-ec2-role-for-s3"
  assume_role_policy = module.policies.ec2_assume
  tags               = var.tags
}

module "databricks_iam_policy" {
  source      = "../../IAM/aws_iam_policy"
  name        = "${var.name}-dbx-pass-role-for-s3"
  description = "Policy used by databricks to enable pass role between ec2 and s3"
  policy      = data.aws_iam_policy_document.self.json
  tags        = var.tags
}

resource "aws_iam_role_policy" "databricks_s3_kms_iam_policy" {
  name = "${var.name}-dbx-s3-kms"
  role = module.databricks_iam_role.id
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "VisualEditor0",
        "Effect" : "Allow",
        "Action" : [
          "s3:ListBucket",
          "s3:PutObject",
          "s3:GetObject",
          "s3:DeleteObject",
          "s3:PutObjectAcl"
        ],
        "Resource" : var.s3_iam_resources
      },
      {
        "Sid" : "VisualEditor1",
        "Effect" : "Allow",
        "Action" : [
          "kms:Decrypt",
          "kms:GenerateDataKey"
        ],
        "Resource" : "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "self" {
  policy_arn = module.databricks_iam_policy.arn
  role       = var.crossaccount_role_name
}

module "databricks_iam_instance_profile" {
  source = "../../IAM/aws_iam_instance_profile"
  name   = "${var.name}-dbx"
  role   = module.databricks_iam_role.name
  tags   = var.tags
}

resource "databricks_instance_profile" "self" {
  instance_profile_arn = module.databricks_iam_instance_profile.arn
  depends_on           = [module.databricks_iam_instance_profile]
}

# Grant access to instance profile to all users in workspace
data "databricks_group" "self" {
  display_name = "users"
}

resource "databricks_group_instance_profile" "self" {
  group_id            = data.databricks_group.self.id
  instance_profile_id = databricks_instance_profile.self.id
}
