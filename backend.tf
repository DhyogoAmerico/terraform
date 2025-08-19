terraform {
  backend "s3" {
    bucket = "tfstate-fiap-bucket-dhyogo"
    key    = "fiap-dhyogo/terraform.tfstate"
    region = "us-east-1"
  }
}
