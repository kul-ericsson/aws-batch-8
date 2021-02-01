resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.vpc.id
  description = "Managed by Terraform"
  name = "thinknyx-${var.tagName}"
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
  egress {
    description = "external access"
    protocol = "-1"
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH Access"
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = [aws_vpc.vpc.cidr_block, data.aws_vpc.default.cidr_block]
  }
  ingress {
    description = "EFS Access"
    protocol = "tcp"
    from_port = 2049
    to_port = 2049
    cidr_blocks = [aws_vpc.vpc.cidr_block]
  }
}
