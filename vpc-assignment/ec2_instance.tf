resource "aws_instance" "public_ec2" {

  ami                         = var.ami_image
  instance_type               = var.instance_type
  key_name                    = "myKey"
  availability_zone           = "us-east-1b"
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  user_data                   = <<-EOF
        #!/bin/bash
        apt update -y
        apt install apache2 -y
        systemctl start apache2
        systemctl enable apach2
        echo "<html><body><h1>Hi there</h1></body></html>" > /var/www/html/index.html
        EOF

  tags = {
    Name = "web1_instance"
  }

}

resource "aws_instance" "private_ec2" {

  ami                         = var.ami_image
  instance_type               = var.instance_type
  key_name                    = "myKey"
  availability_zone           = "us-east-1e"
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  subnet_id                   = aws_subnet.private_subnet.id
  associate_public_ip_address = true
  user_data                   = <<-EOF
        #!/bin/bash
         #!/bin/bash
        apt update -y
        apt install apache2 -y
        systemctl start apache2
        systemctl enable apach2
        echo "<html><body><h1>Hi there</h1></body></html>" > /var/www/html/index.html
        EOF

  tags = {
    Name = "web2_instance"
  }

}
