terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


data "aws_s3_bucket" "s3bucket" {

    bucket = "terraform-state-file-bucket-07032023"
  
}

output "bucket-id" {

    value = data.aws_s3_bucket.s3bucket.id
  
}

output "bucket-arn" {

    value = data.aws_s3_bucket.s3bucket.arn
  
}