output "ip_address" {

    value = aws_instance.web-server.public_ip

    sensitive = true
    
  
}