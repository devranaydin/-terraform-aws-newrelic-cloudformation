###
# NEWRELIC CLOUDFORMATION STACK
###

resource "aws_cloudformation_stack" "newrelic-integration" {
  count         =  var.enable_newrelic_integration ? 1 : 0
  name          =  var.stack_name
  template_url  =  var.template_url
  capabilities  =  ["CAPABILITY_NAMED_IAM"]

  parameters = {
    CreateConfigService         = var.config_service,
    NewRelicLicenseKey          = var.newrelic_account_licence_key ,
    FirehoseStreamName          = var.firehouse_stream_name,
    CloudWatchMetricStreamName  = var.cloudwatch_metric_stream_name,
    NewRelicDatacenter          = var.newrelic_data_center
    S3BackupBucketName          = var.backup_bucket_name,
    S3ConfigBucketName          = var.config_bucket_name
    }
  
  tags = {

    Name             = var.stack_name,
    Terraform        = true

  }
  
}
