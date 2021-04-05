provider "aws" {

  region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-042e8287309f5df03"
    instance_type = "t2.micro"
    key_name = "goku-key"
    tags = {
      Name = "dev${count.index}"
    }
    vpc_security_group_ids = [ aws_security_group.acesso_ssh.id ]
}
resource "aws_security_group" "acesso_ssh" {
  name        = "acesso_ssh"
  description = "Allow acesso_ssh "

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}