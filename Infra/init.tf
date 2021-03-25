provider "aws" {
  region = var.aws_region
  access_key = "AKIAUQWA55TCIWCZDW6F"
  secret_key = "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"
}

######## VARIABLES #########

variable "aws_region" {
    type = string
}