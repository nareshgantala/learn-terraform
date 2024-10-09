

data "aws_security_groups" "all_sg" {}

data "aws_security_group" "selected" {
  count = length(data.aws_security_groups.all_sg.ids)
  id = data.aws_security_groups.all_sg[count.index]
}

output "all_sg" {
  value = data.aws_security_groups.all_sg
}

output "single" {
  value = data.aws_security_group.selected
}
