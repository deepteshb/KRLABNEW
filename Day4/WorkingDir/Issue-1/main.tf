resource "aws_instance" "web" {
  ami           = "ami-0e6329e222e662a52"
  instance_type = "t2.micro"
  security_groups = ["allow_tls", "allow-all"]

  tags = {
    Name = "myfirstec2"
  }
}

resource "aws_security_group" "news-sg1" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0588b51144775d411"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["172.31.0.0/16"]
  #  ipv6_cidr_blocks = [["::/0"]]
  }
  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["172.31.0.0/16"]
    #  ipv6_cidr_blocks = [["::/0"]]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}


resource "aws_security_group" "news-allow-all" {
  name        = "allow-all"
  description = "Allow All inbound traffic"
  vpc_id      = "vpc-0588b51144775d411"

  ingress {
    description      = "All from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #  ipv6_cidr_blocks = [["::/0"]]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_All"
  }
}



