resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-project"
  tags = {
    name = "terraform-project"
  }
}