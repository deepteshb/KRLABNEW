
# This need to be added since AWS Provider v4.29+ to get VPC id
resource "aws_default_vpc" "default" {} 


// Use of TFVARS
resource "aws_instance" "my_webserver1" {
  ami = var.ec2_instance_ami
  instance_type = "t2.micro"

  tags = {
    Name  = "MyWebServer1"
    Owner = "KRNETWRK"
      }
}

