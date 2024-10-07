variable "simple" {
    default = "Hello World"
}

output "sample_output" {
    value = var.simple
}

output "sample_output2" {
    value="${var.simple}"
}