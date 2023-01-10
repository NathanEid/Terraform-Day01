resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "publicSubnet"
  }
}