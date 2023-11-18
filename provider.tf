terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }

  backend "s3" {
    bucket = "backend-bk"
    key    = "backend-bk/terraform-state1"
    region = "us-east-1"
  }

}

provider "aws" {
  # Configuration options
  region = var.region
}