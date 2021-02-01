data "aws_caller_identity" "current" { }

data "aws_vpc" "default" {
  filter {
    name = "tag:Name"
    values = ["default"]
  }
}

data "aws_route_table" "default"{
  vpc_id = data.aws_vpc.default.id
  filter {
    name = "tag:Name"
    values = ["default"]
  }
}

data "aws_subnet_ids" "sn-ids" {
  vpc_id = aws_vpc.vpc.id
}
