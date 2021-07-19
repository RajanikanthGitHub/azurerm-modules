output "network_security_group_id" {
  value = azurerm_network_security_group.test-nsg.id
}

output "network_security_group_name" {
  value = azurerm_network_security_group.test-nsg.name
}