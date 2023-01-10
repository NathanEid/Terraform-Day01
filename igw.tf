resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mainvpc.id

  tags = {
    Name = "main_igw"
  }
}