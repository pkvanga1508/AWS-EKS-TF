variable "aws_region" {
  description = "The AWS region to deploy the resources in"
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
}

variable "instance_keypair" {
  description = "The key pair to use for SSH access to the instance"
  type        = string
  default     = "terraform-keypair"
}