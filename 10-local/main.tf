variable "components" {
  default = {
    cart = {
      name = "cart",
      instance_type = "t3.micro"
    }
    catalogue = {
      name = "catalogue",
      instance_type = "t3.small"
    }
  }

}

locals {
  instance_type = { for k, v in var.components : k => v.instance_type}
}

output "instance_type" {
  value = local.instance_type
}