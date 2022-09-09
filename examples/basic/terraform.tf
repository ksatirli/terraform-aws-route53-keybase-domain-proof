terraform {
  required_providers {
    # see # see https://registry.terraform.io/providers/hashicorp/aws/4.30.0/
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.30.0, < 5.0.0"
    }
  }
}
