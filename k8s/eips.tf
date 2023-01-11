resource "aws_eip" "nat1" {
  depends_on = [aws_internet_gateway.main_igw]
  tags = {
    Name = "main"
  }
}
