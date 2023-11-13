terraform {
  required_version = ">= 1.1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.3"
    }
  }
}

provider "aws" {
  region = var.region
}

module "newrelic_integration" {
    source = "../../terraform-aws-newrelic-cloudformation"
    aws_account_id               = var.aws_account_id
    newrelic_account_id          = var.newrelic_account_id
    newrelic_account_licence_key = var.newrelic_account_licence_key
    project_name                 = var.project_name
    newrelic_user_key            = var.newrelic_user_key
}