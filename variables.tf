variable "location" {}
variable "rg_name" {}

variable "vnet_name" {}
variable "subnet_name" {}

variable "aks_name" {}

variable "acr_name" {}

variable "mysql_name" {}
variable "mysql_admin" {}
variable "mysql_password" {
  sensitive = true
}

variable "storage_name" {}