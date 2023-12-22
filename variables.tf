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
  type        = string
  description = "Prefix to use for the new S3 logging bucket"
}

variable "is_versioning_enabled" {
  description = "Enable versioning?"
  default     = true
}

variable "is_forcing_destroy" {
  description = "Force the bucket to be emptied before deletion when running 'terraform destroy'?"

  # Warning: USE AT YOUR OWN RISK!
  # Set to 'true' if you want the bucket to be emptied before deletion when running 'terraform destroy'
  default = false
}
