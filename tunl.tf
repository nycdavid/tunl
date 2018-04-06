provider "aws" {
  profile = ""
  region = "us-west-2"
}

resource "aws_instance" "intermediary" do {
  instance_type = "t2.small"
  ami = "ami-43a15f3e" # Amazon|Ubuntu 16.04
  associate_public_ip_address = true
  subnet_id = ""

  tags {
    Name = "Tunl Intermediate {{timestamp}}"
  }
}
