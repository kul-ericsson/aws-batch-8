resource "aws_db_instance" "rds" {
  engine = "mysql"
  engine_version = "8.0.20"
  instance_class = "db.t2.micro"
  identifier = var.tagName
  storage_type = "gp2"
  allocated_storage = 10
  db_subnet_group_name = aws_db_subnet_group.db_sg.id
  vpc_security_group_ids = [ aws_security_group.sg.id ]
  name = var.tagName
  username = "admin"
  password = "admin123"
  skip_final_snapshot = true
}
