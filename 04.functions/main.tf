variable "sample"{
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}


variable "sample1" {
  default = ["abc", "xyz"]
}

variable "sample3" {
  default = {
    abc = 100
    xyz = 200
  }
}

output "sample1" {
  value = var.sample1[0]
}

output "sample2" {
  value = element(var.sample1, 1) 
  }

output "sample3" {
  value = lookup(var.sample3, "abc")
}