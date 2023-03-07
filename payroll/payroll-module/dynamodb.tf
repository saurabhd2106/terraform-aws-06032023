resource "aws_dynamodb_table" "db" {

    name = var.db_name
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "EmployeeID"

    attribute {
      name = "EmployeeID"
      type = "N"
    }
  
}