module "dev_app" {
    source = "./aws_infra"
    my_env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-019715e0d74f695be"
    instance_count = 1
 }

module "stg_app" {
    source = "./aws_infra"
    my_env = "stg"
    instance_type = "t2.medium"
    ami_id = "ami-019715e0d74f695be"
   instance_count = 2
}

module "prd_app" {
    source = "./aws_infra"
    my_env = "prd"
    instance_type = "t2.large"
    ami_id = "ami-019715e0d74f695be"
    instance_count = 3
  
}