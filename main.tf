provider "aws"{
region = "us-east-2"
}

resource "aws_instance" "one"{
  ami           = "ami-0945157a116cd5d12"
  instance_type = "t2.micro"
count = 2
  tags = {
Name = "yuva_HCP-${count.index + 1}"
}
}
