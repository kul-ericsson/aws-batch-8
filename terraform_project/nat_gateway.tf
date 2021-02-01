resource "aws_nat_gateway" "natgw" {
  subnet_id = aws_subnet.sn-1.id
  allocation_id = aws_eip.eip.id
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
}
