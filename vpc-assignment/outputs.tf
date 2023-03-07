output "public_vm_ip" {

    value = aws_instance.public_ec2.public_ip
  
}