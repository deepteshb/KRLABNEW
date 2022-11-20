resource "aws_instance" "app1" {
    ami = "ami-0e6329e222e662a52"
    instance_type = "t2.micro"
  
}

resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }

  byte_length = 8
}
