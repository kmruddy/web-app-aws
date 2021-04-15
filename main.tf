terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "2.3.0"
    }
    
  }
}

provider "aws" {}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}
