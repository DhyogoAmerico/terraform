resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.main_fiap.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = aws_vpc.main_fiap.cidr_block
    gateway_id = "local"
  }
}

resource "aws_route_table_association" "rt_association" {
  count = 3
  subnet_id      = aws_subnet.subnet_main[count.index].id
  route_table_id = aws_route_table.rt_public.id
}