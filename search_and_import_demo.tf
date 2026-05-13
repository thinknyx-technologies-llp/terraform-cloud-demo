resource "aws_instance" "thinknyx_client" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
}
