variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}

# Default variable types - string datatype
varaible "sample1"{
  default = "Hello"
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