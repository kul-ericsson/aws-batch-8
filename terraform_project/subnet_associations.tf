resource "aws_route_table_association" "igw_rt" {
  subnet_id = aws_subnet.sn-1.id
  route_table_id = aws_route_table.igw_rt.id
}
resource "aws_route_table_association" "natgw_rt_2" {
  subnet_id = aws_subnet.sn-2.id
  route_table_id = aws_route_table.natgw_rt.id
}
resource "aws_route_table_association" "natgw_rt_3" {
  subnet_id = aws_subnet.sn-3.id
  route_table_id = aws_route_table.natgw_rt.id
}
