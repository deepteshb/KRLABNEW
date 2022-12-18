
variable "create_ec2" {
    type = bool
    default = false
}



variable "VM_Names" {
    type = list 
    default = [1,2,3]

}



resource "aws_instance" "myWebApp1" {
    count = var.create_ec2 == true? 1 : 0
    ami           = "ami-0e6329e222e662a52"
    instance_type = "t2.micro"
    tags = {
    Name = "VM-${var.VM_Names[0]}"
    Created_By = "Deeptesh"
    Environment = "DevLabs"
  }
}

resource "aws_instance" "myWebApp2" {
    count = var.create_ec2 == true? 1 : 0
    ami           = "ami-0e6329e222e662a52"
    instance_type = "t2.micro"
    tags = {
    Name = "VM-${var.VM_Names[1]}"
    Created_By = "Deeptesh"
    Environment = "DevLabs"
  }
}

resource "aws_instance" "myWebApp3" {
    count = var.create_ec2 == true? 1 : 0
    ami           = "ami-0e6329e222e662a52"
    instance_type = "t2.micro"
    tags = {
    Name = "VM-${var.VM_Names[2]}"
    Created_By = "Deeptesh"
    Environment = "DevLabs"
  }
}