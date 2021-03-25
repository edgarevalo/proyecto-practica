resource "aws_security_group" "ssh-allow" {
  name        = "ssh-allow"
  description = "Allow ssh inbound traffic"
  vpc_id      =  "vpc-c98f3ba2"

  ingress {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-allow"
  }
}