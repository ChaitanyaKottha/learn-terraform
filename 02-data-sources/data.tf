data "aws_ami" "centos8" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}
output "ami"{
  value = data.aws_ami.centos8
}
//foo is name for local reference, aws_instance is name provided by vendor
data "aws_instance" "foo" {
  instance_id = "i-0d5872d49a40a35bf"
}
output "instance"{
  value = data.aws_instance.foo.public_ip
}