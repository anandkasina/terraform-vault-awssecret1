resource "vault_aws_secret_backend" "aws" {
  access_key = var.access
  secret_key = var.secret
  path = var.path
  region = "ap-south-1"
}

resource "aws_iam_role" "temprole" {
  name = var.name

  assume_role_policy = data.aws_iam_policy_document.policy.json
}
resource "aws_iam_role_policy_attachment" "attach" {
  policy_arn = data.aws_iam_policy.policy.arn
  role       = aws_iam_role.temprole.name
}

resource "vault_aws_secret_backend_role" "role" {
  role_arns = [aws_iam_role.temprole.arn]
  backend = vault_aws_secret_backend.aws.path
  credential_type = "assumed_role"
  name = var.name
}
