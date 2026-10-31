output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "app_subnet_id" {
  value = azurerm_subnet.app.id
}

output "app_subnet_name" {
  value = azurerm_subnet.app.name
}

output "app_nsg_id" {
  value = azurerm_network_security_group.app.id
}
