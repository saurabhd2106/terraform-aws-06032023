resource "aws_s3_bucket" "data" {
  
  bucket = "${var.region}-${var.bucket}"

 depends_on = [
   aws_dynamodb_table.db
 ]

}