provider "aws"{
region = "us-east-2"
}

resource "aws_instance" "one"{
  ami           = "ami-0945157a116cd5d12"
  instance_type = "t2.micro"
count = 2
  tags = {
Name = var.instance_tags
}
}

variable "instance_tags" {
type=map(string)
default = {
name = "yuva"
server = "test"
connection = "ssh"
}
}
