### 
# IAM ROLE FOR NEWRELIC
##
resource "aws_iam_role" "newrelic-integration-role" {
    count = var.enable_newrelic_integration ? 1 : 0
    name = var.iam_role_name
  
    assume_role_policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
            Effect = "Allow"
            Principal = {
                AWS = "arn:aws:iam::${var.aws_account_id}:root"
            }
            Action = "sts:AssumeRole"
            Condition ={
                StringEquals = {
                    "sts:ExternalId" = "${var.newrelic_account_id}"
                }
            }
        },
      ]
    })
  inline_policy {
    name = "NewRelicBudget"

    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   = ["budgets:ViewBudget"]
          Effect   = "Allow"
          Resource  = "*"
        },
      ]
    })
  }

    tags = {
      Name      = var.iam_role_name
      Terraform = true
    }
}

resource "aws_iam_role_policy_attachment" "newrelic-integration-attach-policy" {
  count      = var.enable_newrelic_integration ? 1 : 0
  role       = aws_iam_role.newrelic-integration-role[count.index].name
  policy_arn = var.iam_policy_name
}