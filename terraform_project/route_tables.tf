resource "aws_route_table" "igw_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    "Name" = "thinknyx-${var.tagName}-igw"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table" "natgw_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    "Name" = "thinknyx-${var.tagName}-natgw"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }
}
