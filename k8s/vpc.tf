resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
  tags = {
    Name = var.vpc_name
  }
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "Vpc id."
  sensitive   = false
}
