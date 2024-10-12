resource "aws_instance" "frontend" {
  ami           = data.aws_ami.Centos8.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "test"
  }
}

data "aws_ami" "Centos8" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }
}

variable "sg_id" {}