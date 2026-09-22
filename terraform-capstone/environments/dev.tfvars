aws_region    = "ca-central-1"
project_name  = "terraform-capstone"
environment   = "dev"
instance_type = "t3.micro"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24"
]
