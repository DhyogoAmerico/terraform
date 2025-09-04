resource "aws_s3_bucket" "bucket-backend-dhyogo" {
  bucket = var.project_name

  tags = var.tags
}
