resource "aws_route_table_association" "public_rta" {
  subnet_id      = aws_subnet.public01.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_rta" {
  subnet_id      = aws_subnet.private01.id
  route_table_id = aws_route_table.private_rt.id
}
