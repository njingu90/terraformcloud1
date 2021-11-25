terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws-region
  profile = var.user_profile
  shared_credentials_file = var.shared_credentials_file
  default_tags {
    tags = var.tags
  }
}

