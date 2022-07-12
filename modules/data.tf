data "aws_iam_policy_document" "policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::417360980458:root"]
      type        = "AWS"
    }

  }
}

data "aws_iam_policy" "policy" {
  name = "AdministratorAccess"
}
