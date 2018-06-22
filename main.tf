resource "aws_s3_bucket" "log_bucket" {
  bucket_prefix = "${var.log_bucket_prefix}"
  acl           = "log-delivery-write"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  # Warning: USE AT YOUR OWN RISK!
  # Set to 'true' if you want the bucket to be emptied before deletion when running 'terraform destroy'
  force_destroy = false

  tags {
    terraform  = "true"
    log-bucket = "true"
  }
}
