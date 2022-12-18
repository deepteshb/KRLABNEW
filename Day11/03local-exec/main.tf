#----------------------------------------------------------
# My Terraform
#
# Execute Local Commands on Computer with Terraform
#
# Made by KRNETWRK
#----------------------------------------------------------

resource "null_resource" "command2" {
  provisioner "local-exec" {
    interpreter = ["PowerShell"]
    command = "dir >> log.txt" 
  }
}


resource "aws_instance" "myserver" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = "t2.micro"  
}
