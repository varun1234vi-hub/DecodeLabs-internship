variable "dynamo_table" {
    type = string
    default = "dynamo_table"
    description = "this is dynamodb table name"
}

variable "aws_ami_id" {
    type = string
    default = "ami-019715e0d74f695be"
    description = "this is ami id for instance"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "this is instance tyoe for instance "
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "terra_server"
}

