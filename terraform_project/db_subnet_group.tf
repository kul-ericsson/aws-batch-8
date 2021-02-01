resource "aws_db_subnet_group" "db_sg" {
  name = var.tagName
  subnet_ids = [ aws_subnet.sn-2.id, aws_subnet.sn-3.id ]
}
