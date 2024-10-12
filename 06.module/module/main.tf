resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello from Module-1 - INPUT - ${var.input}"
  }
}

resource "null_resource" "nothing12" {
  provisioner "local-exec" {
    command = "echo Hello from Module-2"
  }
}


resource "null_resource" "nothing2" {
  provisioner "local-exec" {
    command = "echo Hello from Module-3"
  }
}

variable "input" {}
