resource "aws_route_table" "mytable" {
  vpc_id = aws_vpc.mainvpc.id
  tags = {
    Name = "mytable"
  }
}

resource "aws_route" "r" {
  route_table_id = aws_route_table.mytable.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "subnetass" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.mytable.id
}

# resource "aws_route_table_association" "igwass" {
#   gateway_id     = aws_internet_gateway.igw.id
#   route_table_id = aws_route_table.mytable.id
# }