terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # version = ">= 2.7.0"
      configuration_aliases = [ aws.module2 ]
    }
  }
}


resource "aws_vpc" "north" {
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "north-vpc-1"
  }
}

resource "aws_vpc" "main" {
  provider = aws.module2
  cidr_block = "10.1.2.0/24"

  tags = {
    Name = "west-vpc-1"
  }
}
