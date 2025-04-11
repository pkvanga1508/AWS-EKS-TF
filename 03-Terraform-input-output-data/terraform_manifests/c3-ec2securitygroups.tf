resource "aws_security_group" "vpc-ssh" {
    name = "vpc-ssh"
    description = "Allow ssh inbound traffic"
    #vpc_id = aws_vpc.vpc.id  #if not mentioned, it will use default VPC
    ingress {
        description = "Allow ssh inbound traffic"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    } 
    egress {
        description = "Allow all IP and ports outbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "vpc-ssh"
    }
}

resource "aws_security_group" "vpc-web" {
    name = "vpc-web"
    description = "Allow web inbound traffic"
    #vpc_id = aws_vpc.vpc.id  #if not mentioned, it will use default VPC
    ingress {
        description = "Allow web inbound traffic"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    } 
    ingress {
        description = "Allow web inbound traffic"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    } 
    egress {
        description = "Allow all IP and ports outbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "vpc-web"
    }
}