terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "Terraform-POC" {
  ami           = "ami-0fa49cc9dc8d62c84"
  instance_type = "t2.micro"

  tags = {
    Name = Terraf0rm-poc-dev
  }
}

