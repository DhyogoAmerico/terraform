resource "aws_subnet" "subnet_main" {
  count = 3
  vpc_id     = aws_vpc.main_fiap.id
  cidr_block = cidrsubnet(aws_vpc.main_fiap.cidr_block, 4, count.index)
  map_public_ip_on_launch = true
  availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"][count.index]

  tags = var.tags
}