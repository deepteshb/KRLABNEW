State is used by Terraform to map real world resources to your configuration

The primary purpose of Terraform state is to store bindings between objects in a remote system and resource instances declared in your configuration. 

When Terraform creates a remote object in response to a change of configuration, it will record the identity of that remote object against a particular resource instance, and then potentially update or delete that object in response to future configuration changes.

For example, when you have a resource resource "aws_instance" "foo" in your configuration, Terraform uses this mapping to know that the resource resource "aws_instance" "foo" represents a real world object with the instance ID i-abcd1234 on a remote system.

This state is stored by default in a local file named "terraform.tfstate", but it can also be stored remotely, which works better in a team environment.

Terraform expects a one-to-one mapping between configured resource instances and remote objects.

terraform show command will show the resources managed in your terraform state.

When using Terraform in a team it is important for everyone to be working with the same state so that operations will be applied to the same remote objects.


Terraform can use remote locking as a measure to avoid two or more different users accidentally running Terraform at the same time.

State Locking - 