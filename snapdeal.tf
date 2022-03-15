provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVMFWVN35PU6A6M4R"
  secret_key = "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"
}
resource "aws_opsworks_rds_db_instance" "my_instance" {
  stack_id            = aws_opsworks_stack.my_stack.id
  rds_db_instance_arn = aws_db_instance.my_instance.arn
  db_user             = "admin"
  db_password         = "admin@123456"
}
