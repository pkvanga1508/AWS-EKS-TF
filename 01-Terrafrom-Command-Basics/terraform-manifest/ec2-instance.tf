#Terrafrom Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

#Provider block
provider "aws" {
  profile = "default"
  region = "us-east-2"
}

#EC2 Instance Resource
resource "aws_instance" "ec2demo" {
  ami = "ami-04985531f48a27ae7" //Ubuntu
  instance_type = "t2.micro"
}



