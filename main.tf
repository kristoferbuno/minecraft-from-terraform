terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "primary_host" {
  ami           = "ami-830c94e3"
  instance_type = var.instance_type

  tags = {
    Name = "MinecraftServerInstance"
  }
}