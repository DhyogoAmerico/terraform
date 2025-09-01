variable "region_default" {
  default = "us-east-1"
}

variable "project_name" {
  default = "fiap-bucket-backend-dhyogo"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name        = "fiap-aula-infra"
    Environment = "Dev"
  }
}

variable "instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}

variable "LabRole" {
  description = "The IAM role to be assumed by the lab user"
  default     = "arn:aws:iam::905236634338:role/LabRole"
}

variable "user_arn" {
  description = "The ARN of the user to be granted access"
  default     = "arn:aws:iam::905236634338:role/voclabs"
}

variable "policy_associate_arn" {
  description = "The ARN of the policy to be associated with the user"
  default     = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}