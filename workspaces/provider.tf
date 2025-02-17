terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "akhila-remote-state"
    key    = "workspace" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "akhila-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}