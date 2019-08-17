output "kms-id" {
  value = "${aws_kms_key.mydemo-terraform-state-s3-kms.arn}"
}
