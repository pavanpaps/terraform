terraform {
  required_version = "~> 1.5.7" //  Value mention as per your terraform version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.20.0" // Value mention as per your aws version
    }
  }
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_vpc" "vpc-dev" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "name" = "my-vpc-dev"
  }
}