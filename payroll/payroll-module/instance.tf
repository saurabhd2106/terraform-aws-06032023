resource "aws_instance" "app_server" {
    ami = var.ami
    instance_type = var.instance_type
    
    tags = {
        Name = "${var.vm-name}-${var.region}"
    }

    depends_on = [
      aws_dynamodb_table.db,
      aws_s3_bucket.data
    ]
    
}