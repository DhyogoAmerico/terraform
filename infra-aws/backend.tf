terraform {
  backend "s3" {
    bucket = "fiap-bucket-backend-dhyogo"
    key    = "aula-infra-aws/terraform.tfstate"
    region = "us-east-1"
  }
}