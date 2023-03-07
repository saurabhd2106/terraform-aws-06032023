module "vm1" {

    source = "../vm-module"

    ami_image = "ami-09cd747c78a9add63"

    instance_type = "t3.micro"

    ec2-name = "vm1"

  
}