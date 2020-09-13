provider "aws" {
  region = var.aws_region
}

provider "random" {
  version = "2.3.0"
}

resource "random_pet" "bucket_name" {
  length    = 2
  separator = "-"
}

resource "aws_s3_bucket" "random_bucket" {
  bucket = "terraform-webinar-${random_pet.bucket_name.id}"
}
