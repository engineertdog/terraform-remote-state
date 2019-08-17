# Auth Provider
provider "aws" {
  profile = "default"
  region  = "${var.aws-region}"
}

# KMS
module "kms" {
  source          = "./services/kms"
  kms-description = "${var.kms-description}"
}

# S3 Module
module "s3" {
  source             = "./services/s3/"
  aws-region         = "${var.aws-region}"
  deployment-env     = "${var.deployment-env}"
  bucket-name        = "${var.bucket-name}"
  bucket-description = "${var.bucket-description}"
  kms-id             = "${module.kms.kms-id}"
}

# Dynamodb Module
module "dynamodb" {
  source                     = "./services/dynamodb/"
  dynamodb-table             = "${var.dynamodb-table}"
  dynamodb-table-description = "${var.dynamodb-table-description}"
}
