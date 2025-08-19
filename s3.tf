resource "aws_s3_bucket" "bucket-backend" {
  bucket = "tfstate-fiap-bucket-dhyogo"

  tags = {
    Name        = "tftate"
    Environment = "Production"
  }
}

# resource "aws_s3_bucket" "bucket-aula" {
#   bucket = "aula-bucket-dhyogo"

#   tags = {
#     Name        = "aula-bucket"
#     Environment = "Development"
#   }
# }