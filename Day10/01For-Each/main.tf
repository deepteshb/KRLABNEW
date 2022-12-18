#----------------------------------------------------------
# My Terraform
#
# Made by KRNETWRK
#----------------------------------------------------------


resource "aws_default_vpc" "default" {} # This need to be added since AWS Provider v4.29+ to get VPC id

resource "aws_instance" "my_server_web" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  //<resourcetype>.<resourceidentifier>.<attribute>
  //aws_security_group.my_webserver.id
  //aws_security_group
  vpc_security_group_ids = [aws_security_group.my_webserver.id]

  tags = {
    Name = "Server-Web"
  }
  depends_on = [aws_instance.my_server_db, aws_instance.my_server_app]
}

resource "aws_instance" "my_server_app" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_webserver.id]

  tags = {
    Name = "Server-Application"
  }

  depends_on = [aws_instance.my_server_db]
}


resource "aws_instance" "my_server_db" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_webserver.id]

  tags = {
    Name = "Server-Database"
  }
}

resource "aws_security_group" "my_webserver" {
  name   = "My Security Group"
  vpc_id = aws_default_vpc.default.id # This need to be added since AWS Provider v4.29+ to set VPC id
  

// for_each works only on list data types and key value maps
//dynamic blocks
  dynamic "ingress" {
    for_each = ["80", "443", "22"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "My SecurityGroup"
  }

  depends_on = [
    aws_default_vpc.default
  ]
}