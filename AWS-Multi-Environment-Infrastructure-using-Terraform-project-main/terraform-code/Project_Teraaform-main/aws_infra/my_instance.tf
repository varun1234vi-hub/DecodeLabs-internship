# EC2 instance

resource "aws_instance" "my_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    count = var.instance_count
    tags  = {
        Name = "${var.my_env}-terra_instance-project"
    }
    
}