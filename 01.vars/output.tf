output "sample_output" {
    value = var.simple
}

output "sample_output2" {
    value="${var.simple}"
}

output "output_list" {
    value = var.sample_list[1]
  
}

output "output_dict" {
  value = var.sample_dict["number"]
}