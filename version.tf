terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
     }
  }
}

provider "aws" {
    profile = "terratest01"
    region = "ap-southeast-1"
    shared_credentials_file = "$HOME/.aws/creds"
  
}