resource "aws_s3_bucket" "terraform_demo" {
  bucket = "asma-terraform-hand0on-2026"
  tags = {
    Environment = var.environment
    Name        = "${local.name_prefix}-bucket"
  }
}

