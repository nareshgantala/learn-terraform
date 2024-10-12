resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo Hello from Module-1"
  }
}

resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo Hello from Module-2"
  }
}


resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo Hello from Module-3"
  }
}