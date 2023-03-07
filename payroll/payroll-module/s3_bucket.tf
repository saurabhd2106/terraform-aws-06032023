resource "aws_s3_bucket" "data" {
  
  bucket = "${var.region}-${var.bucket}"

}