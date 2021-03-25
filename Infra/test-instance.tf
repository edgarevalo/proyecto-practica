resource "aws_instance" "edgar-test" {
  ami           = "ami-03657b56516ab7912"
  instance_type = "t2.micro"

  tags = {
    Name = "proyecto-de-prueba"
  }
  key_name	= "edgar-posta"
  vpc_security_group_ids = [ "$(aws_security_group.$var.vpc_security_group_ec2.id)" ]

}