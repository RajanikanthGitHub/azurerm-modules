# creating Resource group
resource "azurerm_resource_group" "test-rsg" {
  name     = "${var.project_name}-${var.rsg_name}"
  location = var.location
}