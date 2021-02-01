resource "aws_route" "pc_route" {
  route_table_id = data.aws_route_table.default.id
  destination_cidr_block = aws_vpc.vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.pc.id
}
