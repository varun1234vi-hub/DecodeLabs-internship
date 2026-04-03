#key pair

resource"aws_key_pair" "deployer" {
    key_name = "terra_key"
    public_key =  file("D:\\terraform-project\\terra-key.pub")

}

#vpc

resource "aws_default_vpc" "default" {
  
}


#security groups

resource "aws_security_group" "project-sg" {
    name = "allow ports"
    description = "this is sg for ec2 instance"
    vpc_id = aws_default_vpc.default.id #interpolation
 
   #ingoing trafic
    ingress  {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        description = "this is for ssh"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
   #outgiong trafic
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "this is for outgoing internet request"
    }
}


resource "aws_instance" "my_instance" {
    ami = var.aws_ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.project-sg.name] #sg
    tags  = {
        name = var.instance_name #name
    }
    
}