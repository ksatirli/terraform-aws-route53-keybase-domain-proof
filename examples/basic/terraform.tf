terraform {
  required_providers {
    # see # see https://registry.terraform.io/providers/hashicorp/aws/4.30.0/
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.30.0, < 6.0.0"
    }
  }

  required_version = ">= 1.0.0"
}
