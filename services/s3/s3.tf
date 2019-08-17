resource "aws_s3_bucket" "mydemo-terraform-state-storage" {
  region = "${var.aws-region}"
  bucket = "${var.bucket-name}"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${var.kms-id}"
        sse_algorithm     = "aws:kms"
      }
    }
  }

  versioning {
    enabled = true
  }

  tags = {
    Name        = "${var.bucket-description}"
    Environment = "${var.deployment-env}"
  }
}
