resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_fiap.id

  tags = var.tags
}