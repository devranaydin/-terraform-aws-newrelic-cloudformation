variable "region" {
  description = "The AWS region "
  type        = string
  default     = "us-east-1"
}

variable "aws_account_id" {
  description = "Aws account id"
  type = string 
  default = ""
}

variable "project_name" {
  description = "Project Name"
  type = string 
  default = ""
}

variable "newrelic_account_id" {
  description = "Newrelic account id"
  type = string 
  default = ""
}

variable "newrelic_account_licence_key" {
  type =  string
  description = "License keys for agent configuration and metric, event, log and trace APIs"
  default = ""
}

variable "newrelic_user_key" {
  type = string
  description = "usually prefixed with 'NRAK"
  default = ""
}