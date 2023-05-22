terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
      }
    }
    
  required_version = ">= 0.14.9"
}

provider "aws" {
    profile = "default"
    region = "us-west-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-0fcf52bcf5db7b003"
    instance_type = "t2.micro"
    key_name = "iac_alura"
    tags = {
      Name = "Terraform Ansible Python"
    }
}