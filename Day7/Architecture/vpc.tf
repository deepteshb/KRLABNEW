resource "aws_vpc" "USEAST_MAIN_VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "USEAST_MAIN_VPC"
    Environment = "Prod"

  }
}