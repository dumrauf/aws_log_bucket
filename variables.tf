variable "region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "shared_credentials_file" {
  description = "The location of the AWS shared credentials file (e.g. ~dominic/.aws/credentials)"
}

variable "profile" {
  description = "The profile to use"
}

variable "log_bucket_prefix" {
  type        = "string"
  description = "Prefix to use for the new S3 logging bucket"
}
