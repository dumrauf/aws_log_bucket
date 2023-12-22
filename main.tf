resource "aws_s3_bucket" "log_bucket" {
  bucket_prefix = "${var.log_bucket_prefix}"
  acl           = "log-delivery-write"

  force_destroy = "${var.is_forcing_destroy}"

  versioning {
    enabled = "${var.is_versioning_enabled}"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags {
    terraform  = "true"
    log-bucket = "true"
  }
}
