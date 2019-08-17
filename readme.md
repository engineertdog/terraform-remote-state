## About
This repo is used to create the KMS Key for an S3 bucket and the DynamoDB table required for remote state and state locking for Terraform resources.

## Setup
Set the following values in `variables.tf`
- aws-region
- deployment-env
- bucket-name
- dynamodb-table

Lastly, you can change the name of the resources in `services/s3/s3.tf`, `services/kms/kms.tf`, and `services/dynamodb/dynamodb.tf`. Just make sure that you change the references to them as well. The only reference is in `services/kms/outputs.tf`, to the KMS resource.