output "vpc_id" {
  description = "ID of the capstone VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value       = aws_subnet.private[*].id
}

output "security_group_id" {
  description = "Web security group ID"
  value       = aws_security_group.web.id
}

output "web_instance_ids" {
  description = "IDs of web EC2 instances"
  value       = [for instance in aws_instance.web : instance.id]
}

output "web_public_ips" {
  description = "Public IP addresses of web EC2 instances"
  value = {
    for key, instance in aws_instance.web :
    key => instance.public_ip
  }
}
