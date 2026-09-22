terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "asma-terraform-state-2026-unique"
    key          = "terraform-hands-on/terraform.tfstate"
    region       = "ca-central-1"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = "ca-central-1"
}
