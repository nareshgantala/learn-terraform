variable "sample"{
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}


variable "sample1" {
  default = ["abc", "xyz"]
}

output "sample1" {
  value = var.sample1[0]
}