provider "aws" {
}

variable "instance_count" {
    type    = number
    default = 1
}

variable "common_tags" {
    type = map(string)
}

variable "instance_type" {
    type = string
}

variable "ami" {
    type = string
}

resource "aws_instance" "terraform_cloud_demo" {
    count         = var.instance_count
    instance_type = var.instance_type
    ami           = var.ami
    tags          = var.common_tags
    key_name      = "kul"
}

output "server_private_ip" {
    value = aws_instance.terraform_cloud_demo.*.private_ip
}

output "server_public_ip" {
    value = aws_instance.terraform_cloud_demo.*.public_ip
}

output "server_instance_id" {
    value = aws_instance.terraform_cloud_demo.*.id
}