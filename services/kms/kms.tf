resource "aws_kms_key" "mydemo-terraform-state-s3-kms" {
  description             = "${var.kms-description}"
  deletion_window_in_days = 7
}
