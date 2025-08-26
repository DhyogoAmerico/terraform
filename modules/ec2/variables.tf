variable "ami" {
  description = "Define the AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Define the type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Define the name of the instance"
  type        = string
}

variable "region" {
  description = "Define the AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}