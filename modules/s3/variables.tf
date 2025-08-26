variable "bucket_name" {
  description = "Define the name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "Define the ACL policy for the S3 bucket"
  type        = string
  default     = "private"
}

variable "region" {
  description = "Define the AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}