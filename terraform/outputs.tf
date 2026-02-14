output "ec2_instance_id" {
  value = aws_instance.demo_ec2_name_here.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.demo_bucket_name_here.bucket
}
