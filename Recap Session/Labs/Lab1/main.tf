resource "aws_instance" "web" {
  ami           = var.vm_ami
  instance_type = var.vm_instance_type

  tags = {
    Name = var.vm1_name
  }
}

resource "aws_instance" "db" {

    ami           = var.vm_ami
    instance_type = var.vm_instance_type

  tags = {
    Name = var.vm2_name
  }
}

resource "aws_security_group" "allow_port_80" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}