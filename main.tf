provider "aws"{
region = "us-east-2"
}

resource "aws_instance" "one"{
  ami           = "ami-0945157a116cd5d12"
  instance_type = "t2.micro"
  tags = {
Name = "yuva-HCP"
}
}
