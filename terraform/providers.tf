terraform {
  required_version = "~> 1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  # Region hard-coded to us-east-1 for S3 Terraform backup usage.
  backend "s3" {
    # Change to your backend bucket name
    bucket = "testdomain-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Region dynamic to deploy resources in appropriate region.
provider "aws" {
  region = "${var.region}"
}

# Region hard-coded to us-east-1 for CloudFront usage.
provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}