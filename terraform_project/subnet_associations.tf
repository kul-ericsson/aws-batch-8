resource "aws_route_table_association" "igw_rt" {
  subnet_id = aws_subnet.sn_1.id
  route_table_id = aws_route_table.igw_rt.id
}
