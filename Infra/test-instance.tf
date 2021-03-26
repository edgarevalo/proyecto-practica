resource "aws_instance" "edgar-test" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "proyecto-de-prueba"
  }
  key_name	= "edgar-posta-2"

  security_groups = [ var.security_group_name ]
}

resource "null_resource" "connect_bastion" {
  connection {
    type        = "ssh"
    host        = aws_instance.edgar-test.public_ip
    user        = "ec2-user"
    private_key = file(var.key_path)

  }
  provisioner "remote-exec" {
    inline = [
    "sudo yum update -y",
    "sudo yum install docker -y",
    "sudo service docker start",
    "sudo docker pull jenkins/jenkins",
    "echo = Installed successfully"
    ]
    }
  depends_on = ["aws_instance.edgar-test"]
}




######## INSTALACION DE PAQUETES #######



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

variable "key_path" {
  type = string
  default = "C:/Users/Edgar/Documents/Cloud Lab/AWS Lab/edgar-posta-2.pem"
}