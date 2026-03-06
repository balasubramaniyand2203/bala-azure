output "aks_name" {
  value = module.aks.aks_name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "mysql_fqdn" {
  value = module.mysql.mysql_fqdn
}