output "bucket_name" {
  value = aws_s3_bucket.terraform_demo.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.terraform_demo.arn
}
output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}
output "amazon_linux_ami_id" {
  value = data.aws_ami.amazon_linux.id
}
output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.web.private_ip
}
