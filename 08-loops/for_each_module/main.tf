#map
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

module "ec2" {
  source = "./modules"
  for_each = var.components
  instance_type = each.value.instance_type
  name = each.value.name
}