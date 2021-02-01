resource "aws_efs_mount_target" "efs_mt" {
  for_each = data.aws_subnet_ids.sn-ids.ids
  file_system_id = aws_efs_file_system.efs.id
  subnet_id = each.value
  security_groups = [ aws_security_group.sg.id ]
}
