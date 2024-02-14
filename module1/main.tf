terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # version = ">= 2.7.0"
      configuration_aliases = [aws.module1]
    }
  }
}

module "module2" {
  source = "../module2"
  providers = {
    aws.module2 = aws.module1
  }
}

