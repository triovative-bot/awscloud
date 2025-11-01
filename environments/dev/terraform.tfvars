aws_region = "us-east-1"

# VPC Configuration
vpc_cidr            = "10.1.0.0/16"
public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnet_cidrs = ["10.1.3.0/24", "10.1.4.0/24"]

# EC2 Configuration
instance_count = 1
instance_type  = "t3.micro"

# EKS Configuration
k8s_version = "1.28"
