variable "cidr_block" {

    default = "10.0.0.0/16"
    type = string
  
}

variable "cidr_block_public_subnet_ip_range" {

    default = "10.0.1.0/24"
    type = string
  
}

variable "cidr_block_private_subnet_ip_range" {

    default = "10.0.2.0/24"
    type = string
  
}

variable "ami_image" {

    default = "ami-09cd747c78a9add63"

    type = string

    description = "This is a variable for the AMI image"
  
}

variable "instance_type"{
    default = "t2.micro"
    type = string
}