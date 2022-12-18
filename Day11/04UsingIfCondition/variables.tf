variable "env" {
  default = "dev"
}

variable "prod_onwer" {
  default = "KRNETWRK"
}

variable "noprod_owner" {
  default = "KRNETWRK-NON-PROD"
}

variable "ec2_size" {
  default = {
    "prod"    = "t2.medium"
    "dev"     = "t2.micro"
    "staging" = "t2.small"
  }
}

variable "allow_port_list" {
  default = {
    "prod" = ["80", "443"]
    "dev"  = ["80", "443", "8080", "22"]
  }
}
