resource "aws_dynamodb_table" "mydemo-terraform-state-lock" {
  name           = "${var.dynamodb-table}"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "${var.dynamodb-table-description}"
  }
}
