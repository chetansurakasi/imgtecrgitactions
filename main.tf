provider "aws" {
  region  = "us-east-1"
  access_key = "AKIA4DMVQSQNUK2XUCDZ"
  secret_key = "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"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "mchetnjsrfbjsh"  # Replace with a globally unique name
  force_destroy = true  # Optional: allows deletion of non-empty bucket

  tags = {
    Name        = "MyAppBucket"
    Environment = "Dev"
  }
}
