module "payroll-us" {

    source = "../payroll-module"

    ami = "ami-09cd747c78a9add63"
    region = "us-east-1"
    instance_type = "t3.micro"
    vm-name = "payroll-vm"
    bucket = lower("test-BUCKET-07032023-12343534")
    db_name = "employee-data"

    
  
}

