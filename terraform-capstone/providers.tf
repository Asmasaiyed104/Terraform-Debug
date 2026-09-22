terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Primary AWS provider
provider "aws" {
  region = var.aws_region
}

# Secondary AWS provider using an alias
provider "aws" {
  alias  = "secondary"
  region = "us-east-1"
}