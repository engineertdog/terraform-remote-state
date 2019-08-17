# Auth
variable "aws-region" {
  default = "us-east-2"
}

# ENV
variable "deployment-env" {
  default = "prod"
}

# S3
variable "bucket-name" {
  default = "mydemo-terraform-state-storage"
}

variable "bucket-description" {
  default = "Terraform state Storage"
}

# KMS
variable "kms-description" {
  default = "Terraform Storage S3 Key"
}

# Dynamodb
variable "dynamodb-table" {
  default = "mydemo-terraform-state-lock"
}

variable "dynamodb-table-description" {
  default = "DynamoDB Terraform State Lock Table"
}
