
terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.27.0"
    }
  }
}


provider "newrelic" {
  account_id = var.newrelic_account_id
  api_key = var.newrelic_user_key
  region = "EU"
}