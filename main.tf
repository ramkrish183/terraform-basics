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
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  # ami           = "ami-022e1a32d3f742bd8" /* amazon linux */
  ami=  "ami-053b0d53c279acc90" # ubuntu ami image
  instance_type = "t2.micro"

  tags = {
    #Name = "Ec2Instance_Terraform"
	Name = var.instance_name
  }
}
