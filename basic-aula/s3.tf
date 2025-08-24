resource "aws_s3_bucket" "bucket-backend" {
  bucket = "tfstate-fiap-bucket-dhyogo"

  tags = {
    Name        = "tftate"
    Environment = "Production"
  }
}

resource "aws_s3_bucket" "bucket-aula" {
  bucket = "aula-bucket-${local.name}"

  tags = {
    Name        = "aula-bucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket" "bucket-aula-fiap" {
  bucket = "aula-bucket-${local.name}-${local.school}"

  tags = {
    Name        = "aula-bucket-${local.school}"
    Environment = "Development"
  }
}
