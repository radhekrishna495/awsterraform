terraform {
  backend "s3" {
    bucket         = "terraform-s3-bucker123334321"
    region         = "us-east-1"
    key            = "EFS/terraform.tfstate"
    dynamodb_table = "EFS_tf"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}