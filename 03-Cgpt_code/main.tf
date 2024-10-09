variable "security_group_id" {
  default = "sg-0e94234670534fdb0"
}


data "aws_security_group" "selected" {
  count = length(aws_security_group.existing_sgs.ids) > 0 ? 1 : 0
  id    = var.security_group_id
}

variable "instance_type" {
  default = "t3.micro"
}

resource "aws_instance" "frontend" {
  count = length(data.aws_security_group.selected) > 0 ? 1 : 0
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.selected]

  tags = {
    Name = "frontend"
  }
}