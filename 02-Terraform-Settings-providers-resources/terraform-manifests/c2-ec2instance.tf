resource "aws_instance" "my_ec2_vm" {
  ami           = "ami-04985531f48a27ae7" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app1-install.sh")
  tags = {
    "name" = "EC2 Demo"
  }
}
