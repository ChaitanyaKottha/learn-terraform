resource "aws_instance" "test" {
  count=length(var.components)
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  tags = {
    Name = var.components
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

output "public_ip" {
  #without count
  #value = aws_instance.test.public_ip
  #with count
  value = aws_instance.test.*.public_ip
}

variable "components" {
  default = [ "cart", "catalogue"]
}