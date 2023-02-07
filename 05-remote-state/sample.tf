provider "aws" {
  region = "us-east-1"
}
terraform {
  backend s3 {
    bucket = "terraform-chaitanya"
    key = "05-remote-state/terraform.tfstate"
    region = "us-east-1"
  }
}
data "aws_ami" "centos8" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}
resource "aws_instance" "test" {
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  tags = {
    Name = "test-centos8"
  }
}