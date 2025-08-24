variable "region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

variable "tags_prod" {
    default = {
        Name        = "Aula-Data-Terraform"
        Environment = "production"
        Team        = "devops"
    }
}