resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.myVpc.id

  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "80"
    to_port    = "80"
  }

  tags = {
    Name = "nacl"
  }
}


resource "aws_network_acl_association" "public" {
  network_acl_id = aws_network_acl.nacl.id
  subnet_id      = aws_subnet.public_subnet.id
}

resource "aws_network_acl_association" "private" {
  network_acl_id = aws_network_acl.nacl.id
  subnet_id      = aws_subnet.private_subnet.id
}