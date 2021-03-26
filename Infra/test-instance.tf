resource "aws_instance" "edgar-test" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "proyecto-de-prueba"
  }
  key_name	= "edgar-posta-2"

  security_groups = [ var.security_group_name ]

}

######## VARIABLES #########



variable "key_name" {
  type = string 
}

variable "avail_zone" {
    type = string
}

variable "ami" {
    type = string
}