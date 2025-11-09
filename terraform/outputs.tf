output "s3_bucket_name" {
  value = aws_s3_bucket.safe_bucket.id
}

output "instance_id" {
  value = aws_instance.web.id
}
