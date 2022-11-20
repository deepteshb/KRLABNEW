resource "aws_instance" "VM_Instances" {
  for_each = toset( var.vm_name)
  ami           = var.vm_amiid
  instance_type = var.vm_instance_type

  tags = {
    Name     = each.key
  }
}
