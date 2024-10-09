data "aws_security_group" "selected" {
  name = "allow-all1"
}

data "aws_security_groups" "all_sg" {}

output "all_sg" {
  value = data.aws_security_groups.all_sg
}

output "security_group_id" {
  value = data.aws_security_group.selected.id
}
