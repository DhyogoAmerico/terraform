output "vpc_cidr" {
  value = aws_vpc.main_fiap.cidr_block
}

output "vpc_id" {
  value = aws_vpc.main_fiap.id
}

output "subnet_cidr" {
  value = aws_subnet.subnet_main[*].cidr_block
}

output "subnet_id" {
  value = aws_subnet.subnet_main[*].id
}