# bool: a boolean value, either true or false. bool values can be used in conditional logic.
variable "create_ec2" {
    type = bool
    default = false
}

resource "aws_vpc" "myVpc" {
    count = var.create_ec2 == true? 1 : 0
    cidr_block = "172.0.0.0/16"
}