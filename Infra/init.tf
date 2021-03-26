variable "vault_aws_backend" {
  type = string
  description = "path to aws secrets engine"
  default = "aws"
}

variable "vault_aws_role"{
  type = string
  description = "name of aws role for credentials"
  default = "edgar-vault"
}

provider "vault" {
  #VAULT_ADDR Y VAULT_TOKEN seteados como variables de entorno
}

provider "aws"{
  region = var.aws_region
}

data "vault_generic_secret" "appkey" {
  path = "secret/appkey"
}

data "vault_aws_access_credentials" "creds" {
  backend = var.vault_aws_backend
  role = var.vault_aws_role
  type = "sts"
}


######## VARIABLES #########

variable "aws_region" {
    type = string
}