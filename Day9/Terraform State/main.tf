 resource "aws_instance" "dbapp" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "VM-1"
    }
  }

   resource "aws_instance" "dbapp2" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "VM-2"
    }
  }

  resource "aws_instance" "dbapp3" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "VM-3"
    }
  }

  resource "aws_instance" "dbapp4" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "VM-4"
    }
  }

  resource "aws_instance" "dbapp5" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "VM-5"
    }
  }

resource "aws_instance" "app-server-1" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "App-server-1" #sg-0c81ffb8da5b43035
    }
  
}


resource "aws_instance" "app-server-2" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      Name = "App-server-2" #sg-0c81ffb8da5b43035
    }
  
}