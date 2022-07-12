provider "vault" {
  address = "http://35.226.52.59:8200/"
  token = "hvs.0F8m6ealq5Ij0I10TfUoR0L4"
}

provider "aws" {
  region = "ap-south-1"
  access_key = var.access
  secret_key = var.secret
}
