variable "ami_image" {

    default = "ami-09cd747c78a9add63"

    type = string

    description = "This is a variable for the AMI image"
  
}

variable "instance_type"{

    default = "t2.micro"
    type = string
}

variable "ec2-name" {
    default = "myVm"
    type = string

}