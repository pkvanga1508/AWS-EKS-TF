#Terraform Block
terraform {
  required_version = "~> 1.11"  #Version should be greater than 1.11
  required_providers {  #required_providers Block
    aws = {  #aws = argument
//      source = "<registry>/hashicorp/aws"
      source = "hashicorp/aws"
      version = "~> 5.94"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  profile = "default"  #Automatically picks default. Default credentials ~/.aws/credentials uses this information
}

