output "instance_public_isp" {
    value = aws_instance.ec2_instance.public_ip
    description = "Public IP address of the EC2 instance"
}
output "instance_public_dns" {
    value = aws_instance.ec2_instance.public_dns
    description = "Public DNS of the EC2 instance"
}