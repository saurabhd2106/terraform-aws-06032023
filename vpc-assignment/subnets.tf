resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.myVpc.id

  cidr_block = var.cidr_block_public_subnet_ip_range

  map_public_ip_on_launch = true

  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.myVpc.id

  map_public_ip_on_launch = false

  availability_zone = "us-east-1e"

  cidr_block = var.cidr_block_private_subnet_ip_range

  tags = {
    Name = "private_subnet"
  }
}