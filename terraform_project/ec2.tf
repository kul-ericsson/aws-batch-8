resource "aws_instance" "ec2" {
  ami = "ami-0010499d417b154b6"
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
  availability_zone = "us-east-2b"
  subnet_id = aws_subnet.sn-2.id
  vpc_security_group_ids = [ aws_security_group.sg.id ]
}
