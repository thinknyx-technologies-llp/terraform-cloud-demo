provider "aws" {
}

resource "aws_instance" "terraform_cloud_demo" {
    instance_type = "t3.micro"
    ami           = "ami-0fe18bc3cfa53a248"
}