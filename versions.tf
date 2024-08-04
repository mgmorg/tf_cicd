terraform {
  backend "s3" {
    bucket         = "observability-tfstate-bucky"
    region         = "us-east-1"
    key            = "ec2_actions/terraform.tfstate"
    dynamodb_table = "nimbus-state-lock"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
