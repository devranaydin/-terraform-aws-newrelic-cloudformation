variable "aws_account_id" {
  description = "Aws account id"
  type = string 
  default = ""
}

variable "newrelic_account_id" {
  description = "Newrelic account id"
  type = string 
  default = ""
}


variable "enable_newrelic_integration" {
  description = "Enable or disable monitor your AWS services with New Relic Infrastructure"
  type      = bool
  default   = true
}

variable "iam_role_name" {
  type = string
  description = "Iam role name"
  default = "NewRelicInfrastructure-Integrations"
}


variable "iam_policy_name" {
  type = string
  description = "Readonly access policy"
  default = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

variable "stack_name" {
  type = string
  description = "Cloudformation Stack Name"
  default = "NewRelic-Metric-Stream"
}

variable "template_url" {
  type = string
  description = "Newrelic Cloudformation Template Url"
  default = "https://nr-downloads-main.s3.amazonaws.com/cloud_integrations/aws/cloudformation/MetricStreams_CloudFormation.yml"
}

variable "config_service" {
  type      = bool
  default   = false
}

variable "newrelic_account_licence_key" {
  type =  string
  description = "License keys for agent configuration and metric, event, log and trace APIs"
  default = ""
}
variable "firehouse_stream_name" {
  type = string
  description = "Firehouse Stream Name"
  default = "NewRelic-Delivery-Stream"
}

variable "cloudwatch_metric_stream_name" {
  type = string
  description = "Cloudformation Stack Name"
  default = "NewRelic-Metric-Stream"
}


variable "newrelic_data_center" {
  type = string
  description = "Newrelic Data Center EU/US"
  default = "EU"
}

variable "backup_bucket_name" {
  type = string
  description = "Firehose S3 Backup Bucket Name"
  default = "firehose-backup"
}

variable "config_bucket_name" {
  type = string
  description = "S3 Config Bucket Name"
  default = "config-backup"
}
