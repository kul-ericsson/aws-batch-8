resource "aws_efs_file_system" "efs" {
  creation_token = var.tagname
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
}
