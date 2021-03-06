resource "aws_subnet" "sn-1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "${var.cidr_block}.10.10.0/24"
  availability_zone = "us-east-2a"
  tags = {
    "Name" = "thinknyx-${var.tagName}-public"
  }
  map_public_ip_on_launch = true
}
resource "aws_subnet" "sn-2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "${var.cidr_block}.10.20.0/24"
  availability_zone = "us-east-2b"
  tags = {
    "Name" = "thinknyx-${var.tagName}-private"
  }
}
resource "aws_subnet" "sn-3" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "${var.cidr_block}.10.30.0/24"
  availability_zone = "us-east-2c"
  tags = {
    "Name" = "thinknyx-${var.tagName}-private"
  }
}
