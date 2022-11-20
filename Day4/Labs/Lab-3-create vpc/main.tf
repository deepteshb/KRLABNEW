resource "aws_vpc" "main" {
  cidr_block = "172.35.0.0/16"  #vpc-06418978acf3d1ea3
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.35.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.35.10.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Subnet-2"
  }
}

resource "aws_instance" "DC-1" {
  ami           = "ami-0e6329e222e662a52"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet-1.id

  tags = {
    Name = "DC-1"
  }
}
