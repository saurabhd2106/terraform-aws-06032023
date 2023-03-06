resource "aws_vpc" "myVpc" {
  cidr_block       = var.cidr_block
  
  instance_tenancy = "default"

  tags = {
    Name = "myVpc"
  }
}