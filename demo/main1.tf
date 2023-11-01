terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-1"  # Set your desired AWS region here
}

resource "aws_s3_bucket" "example" {
  bucket = "vishlax-1995"
  
}

resource "aws_s3_bucket_acl" "example"{
  bucket = aws_s3_bucket.example.id
  acl = "private"
}

resource "aws_s3_bucket_versioning" "example_versioning" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
   
  

