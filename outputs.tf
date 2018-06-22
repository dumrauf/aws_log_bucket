output "log_bucket_id" {
  value = "${aws_s3_bucket.log_bucket.id}"
}

output "log_bucket_domain_name" {
  value = "${aws_s3_bucket.log_bucket.bucket_domain_name}"
}
