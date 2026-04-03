resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.my_env}-terraform-project-bucket"
  tags = {
    name = "${var.my_env}-terraform-project"
    environment = var.my_env
  }
}