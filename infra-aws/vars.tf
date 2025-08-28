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