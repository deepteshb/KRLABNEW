resource "aws_subnet" "USEAST_MAIN_VPC_WEBSERVER_SUBNET_1" {
  vpc_id            = aws_vpc.USEAST_MAIN_VPC.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name        = "USEAST_MAIN_VPC_WEBSERVER_SUBNET_1"
    Environment = "Prod"
  }
}

resource "aws_subnet" "USEAST_MAIN_VPC_APPSERVER_SUBNET_2" {
  vpc_id            = aws_vpc.USEAST_MAIN_VPC.id
  cidr_block        = "10.0.8.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name        = "USEAST_MAIN_VPC_APPSERVER_SUBNET_2"
    Environment = "Prod"
  }
}

resource "aws_subnet" "USEAST_MAIN_VPC_DBSERVER_SUBNET_3" {
  vpc_id            = aws_vpc.USEAST_MAIN_VPC.id
  cidr_block        = "10.0.15.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name              = "USEAST_MAIN_VPC_DBSERVER_SUBNET_3"
    Environment       = "Prod"
    availability_zone = "us-east-1a"
  }
}

