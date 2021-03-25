provider "aws" {
  region = var.aws_region
  access_key = ""
  secret_key = ""
}

######## VARIABLES #########

variable "aws_region" {
    type = string
}