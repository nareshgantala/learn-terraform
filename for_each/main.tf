resource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value}"
  }
}

resource "null_resource" "fruits1" {
    for_each = var.fruits1
    provisioner "local-exec" {
      command = "echo fruit name - ${each.key} - ${each.value["count"]}"
    }
  
}

variable "fruits" {
  default = {
    apple = 100,
    banana = 200,
    orange = 500
  }
}

variable "fruits1" {
  default = {
    apple = {
        name = "apple"
        count = 150
    }
    banana = {
        name = "banana"
        count = 250
    }
  }
}