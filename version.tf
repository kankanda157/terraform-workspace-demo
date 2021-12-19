terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
     }
  }
}

provider "aws" {
    profile = "var.aws_profile_name"
    region = "var.aws_region"
    shared_credentials_file = "$HOME/.aws/creds"
  
}