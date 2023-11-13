resource "newrelic_cloud_aws_link_account" "newrelic" {
  count = var.enable_newrelic_integration ? 1 : 0
  arn = aws_iam_role.newrelic-integration-role[count.index].arn
  metric_collection_mode = "PUSH"
  name = var.project_name

}