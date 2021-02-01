data "aws_caller_identity" "current" { }

data "aws_vpc" "default" {
  filter {
    name = "tag:Name"
    values = ["default"]
  }
}
