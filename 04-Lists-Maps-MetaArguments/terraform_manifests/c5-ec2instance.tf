resource "aws_instance" "ec2_instance" {
    ami = data.aws_ami.amz_linux2.id
    #instance_type = var.instance_type
    # instance_type = var.instance_type_list[0]
    instance_type = var.instance_type_map["dev"]
    
    key_name = var.instance_keypair
    vpc_security_group_ids = [ 
        aws_security_group.vpc-ssh.id, 
        aws_security_group.vpc-web.id 
    ]
    user_data = file("${path.module}/app1-install.sh")
    count = 2
    tags = {
        Name = "EC2 Demo ${count.index + 1}"
    }
}