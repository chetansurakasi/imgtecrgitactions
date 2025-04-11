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

resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = "my-app-repo"
  image_tag_mutability = "MUTABLE" # or "IMMUTABLE"

  tags = {
    Name        = "MyAppECR"
    Environment = "Dev"
  }

}



