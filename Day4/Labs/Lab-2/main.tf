resource "aws_instance" "myWebApp" {
  ami           = var.image_id
  instance_type = var.vm_instance_type
  

  tags = {
    Name = var.vm_name
    Created_By = "Deeptesh"
    Environment = "DevLabs"
  }
}