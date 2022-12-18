resource "aws_instance" "VM1" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"
    tags = {
        "Name" = "VM-1"
        "env" = "prod"
    }

}


resource "aws_instance" "VM2" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t3.micro"

tags = {
        "Name" = "VM-2"
        "env" = "prod"
    }
}