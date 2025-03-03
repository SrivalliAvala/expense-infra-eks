terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "daws81s-rs"
    key    = "expense-alb-ingress1"
    region = "us-east-1"
    dynamodb_table = "daws81s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}