terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

 backend "s3" {
    bucket = "terraform-state-file-bucket-07032023"
    key    = "state-file/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "state-lock-table"
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
