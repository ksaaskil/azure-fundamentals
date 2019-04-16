variable "location" {}

variable "prefix" {
    type = "string"
    default = "my"
}

variable "tags" {
    type = "map"
    default = {
        Environment = "Terraform GS"
        Dept = "Engineering"
  }
}

variable "sku" {
    default = {
        westus = "16.04-LTS"
        eastus = "18.04-LTS"
    }
}

variable admin_username {
    type = "string"
}

variable admin_password {
    type = "string"
}
