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

variable "instance_type_list" {
  description = "List of instance types to create"
  type        = list(string)
  default     = ["t2.micro", "t2.small", "t2.medium"]
}

variable "instance_type_map" {
  description = "Map of instance types to be used for different environments"
  type        = map(string)
  default     = {
    "dev" = "t2.micro"
    "qa" = "t2.small"
    "prod" = "t2.medium"
  }
}