resource "aws_instance" "web-server" {

  ami = var.ami_image

  instance_type = var.instance_type

  tags = {
    "Name" = var.ec2-name
  }

}