output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.bucket-backend.arn
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "instance_ami" {
  description = "The AMI ID of the EC2 instance"
  value       = aws_instance.web.ami
}