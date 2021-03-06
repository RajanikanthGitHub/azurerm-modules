output "Resource_group_name" {
  value = azurerm_resource_group.test-rsg.name
}

output "Resource_group_location" {
  value = azurerm_resource_group.test-rsg.location
}

output "project_name_output" {
  value = var.project_name
}

output "rsg_name_output" {
  value = var.rsg_name
}