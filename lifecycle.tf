resource "aws_s3_bucket" "lifecycle_demo" {
  bucket = "asma-terraform-lifecycle-2026-new"

  lifecycle {
    create_before_destroy = true
  }
}
