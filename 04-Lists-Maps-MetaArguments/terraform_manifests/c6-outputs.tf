# output "instance_public_isp" {
#     value = aws_instance.ec2_instance.public_ip
#     description = "Public IP address of the EC2 instance"
# }
# output "instance_public_dns" {
#     value = aws_instance.ec2_instance.public_dns
#     description = "Public DNS of the EC2 instance"
# }

output "for_output_list" {
    description = "for loop for list"
    value = [for instance in aws_instance.ec2_instance : instance.public_dns]
}

output "for_output_map" {
    description = "for loop for map"
    value = { for instance in aws_instance.ec2_instance : instance.id => instance.public_dns }
}   

output "for_output_map_advanced" {
    description = "for loop for map with advanced syntax"
    value = { for count, instance in aws_instance.ec2_instance : count => {
        public_ip = instance.public_ip
        public_dns = instance.public_dns
    }}
}

#Latest splact syntax
output "splat_instance_public_dns" {
    description = "Legacy splat syntax for public DNS"
    value = aws_instance.ec2_instance[*].public_dns
}