variable "simple" {
    default = "Hello World"
}

variable "sample_number" {
    default = 100
  
}

variable "sample_bolean" {
    default = true
  
}

variable "sample_list" {
    default = [ 100, "Hello World", true ]
}

variable "sample_dict" {
   default =  {
        number = 100,
        string1 = "Hello World",
        boolean1 = true
    }
  
}

variable "env" {}
variable "auto_file" {}
