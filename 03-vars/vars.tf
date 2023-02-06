variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}

# Default variable types - string datatype
variable "sample1" {
  default = "Hello"
}

output "sample1" {
  value = var.sample1
}
# number datatype
variable "sample2" {
  default = 100
}
# boolean datatype
variable "sample3" {
  default = true
}
# list varaibale type
 variable "sample5" {
   default = [
     100,
     "abc",
     true
   ]
 }
output "sample5" {
  value = var.sample5[0]
}
# map variable type
variable "sample6" {
  default = {
    string  = "abc"
    number  = 100
    boolean = true
  }
}

output "sample6" {
  value= var.sample6["string"]
}
# variable from .tfvars file
variable "demo1" {

}
output "demo1" {
  value = var.demo1
}