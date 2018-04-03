provider "aws" {
  profile = ""
  region = "us-west-2"
}

resource "aws_instance" "intermediary" do {
  instance_type = "t2.medium"
  ami = "ami-43a15f3e" # Ubuntu 16.04
  associate_public_ip_address = true
  subnet_id = "" # [TODO] this must launch into a public subnet in the same VPC
                 # as the private subnet we want to get to

  tags {
    Name = "Tunl Intermediate {{timestamp}}"
  }
}
