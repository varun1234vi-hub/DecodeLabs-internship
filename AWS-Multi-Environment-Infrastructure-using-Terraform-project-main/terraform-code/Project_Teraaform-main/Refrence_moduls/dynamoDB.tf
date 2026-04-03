resource "aws_dynamodb_table" "project" {
   name = var.dynamo_table
   billing_mode = "PAY_PER_REQUEST"
   hash_key = "id"
   attribute {
     name = "id"
     type = "S"
   }
}
