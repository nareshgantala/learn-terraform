variable "security_group_name" {
  default = "allow-all"
}

data "aws_security_groups" "all_sgs" {
  # You may want to add a filter or other parameters if needed
}

data "aws_security_group" "selected" {
  count = length(data.aws_security_groups.all_sgs) > 0 ? 1 : 0
  id    = var.security_group_name
}

variable "instance_type" {
  default = "t3.micro"
}

resource "aws_instance" "frontend" {
  count = length(data.aws_security_group.selected) > 0 ? 1 : 0
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_type

  # Fix for accessing security group by index
  vpc_security_group_ids =  [data.aws_security_group.selected[count.index]]

  tags = {
    Name = "frontend"
  }
}
