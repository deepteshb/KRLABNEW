resource "aws_instance" "myWebApp" {
  ami           = "ami-0e6329e222e662a52"
  instance_type = "t2.micro"

  

  tags = {
    Name = "MyWebApp4"
    Created_By = "Deeptesh"
    Environment = "DevLabs"
  }
}