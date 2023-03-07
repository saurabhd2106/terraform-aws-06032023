module "s3_bucket" {
  
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "test-07032023-32985738495-${var.region}"
  acl    = "private"

  versioning = {
    enabled = true
  }

}

variable "region" {

    default = "us-east-1"
  
}