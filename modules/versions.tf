terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "https://github.com/anandkasina/terraform-vault-awssecret1.git"
      version = ">= 3.0"
    }
  }
}
