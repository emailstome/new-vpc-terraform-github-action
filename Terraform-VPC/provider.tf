terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }

  backend "s3" {
    bucket = "my-new-terraform-bucket111"
    key    = "dev/"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options

  region = "us-east-1"
}