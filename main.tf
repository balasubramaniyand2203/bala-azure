module "rg" {

  source = "./modules/resource_group"

  rg_name  = var.rg_name
  location = var.location
}

module "network" {

  source = "./modules/network"

  rg_name  = module.rg.rg_name
  location = var.location

  vnet_name   = var.vnet_name
  subnet_name = var.subnet_name
}

module "acr" {

  source = "./modules/acr"

  acr_name = var.acr_name
  rg_name  = module.rg.rg_name
  location = var.location
}

module "aks" {

  source = "./modules/aks"

  aks_name = var.aks_name
  rg_name  = module.rg.rg_name
  location = var.location

  subnet_id = module.network.subnet_id

  acr_id = module.acr.acr_id
}

module "mysql" {

  source = "./modules/mysql"

  mysql_name = var.mysql_name
  rg_name    = module.rg.rg_name
  location   = var.location

  admin_user     = var.mysql_admin
  admin_password = var.mysql_password
}

module "storage" {

  source = "./modules/storage"

  storage_name = var.storage_name
  rg_name      = module.rg.rg_name
  location     = var.location
}