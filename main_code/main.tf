terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-north-1"
}


provider "aws" {
  alias = "aws_west"
  # Configuration options
  region = "eu-west-1"
}


module "module1" {
  source = "../module1"
    providers = {
    aws.module1 = aws.aws_west
  }
}
