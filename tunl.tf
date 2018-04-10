provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "intermediary" {
  instance_type = "t2.small"
  ami = "ami-4e79ed36" # Amazon|Ubuntu 16.04, also depends on the region
  associate_public_ip_address = true

  tags {
    Name = "Tunl Intermediate {{timestamp}}"
  }
}
