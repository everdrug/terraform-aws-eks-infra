resource "aws_nat_gateway" "gw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public01.id
  tags = {
    Name = "NAT 1"
  }
}
