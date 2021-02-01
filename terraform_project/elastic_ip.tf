resource "aws_eip" "eip" {
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
}
