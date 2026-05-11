provider "aws" {
}

resource "aws_instance" "terraform_cloud_demo" {
    instance_type = "t3.micro"
    ami           = "ami-0fe18bc3cfa53a248"
}

output "server_private_ip" {
    value = aws_instance.terraform_cloud_demo.private_ip
}

output "server_public_ip" {
    value = aws_instance.terraform_cloud_demo.public_ip
}

output "server_instance_id" {
    value = aws_instance.terraform_cloud_demo.instance_id
}