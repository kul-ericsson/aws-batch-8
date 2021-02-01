resource "aws_vpc_peering_connection" "pc" {
  vpc_id = aws_vpc.vpc.id
  peer_owner_id = data.aws_caller_identity.current.account_id
  peer_vpc_id = data.aws_vpc.default.id
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
  auto_accept = true
}
