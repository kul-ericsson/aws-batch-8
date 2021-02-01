resource "aws_efs_file_system" "efs" {
  creation_token = var.tagName
  tags = {
    "Name" = "thinknyx-${var.tagName}"
  }
}
