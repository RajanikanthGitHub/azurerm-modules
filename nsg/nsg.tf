module "nsg" {
  source = "github.com/RajanikanthGitHub/azurerm-modules//ResourceGroup"
}

# creating network security group
resource "azurerm_network_security_group" "test-nsg" {
  name                = "${module.nsg.project_name_output}-${var.nsg_name}"
  location            = module.nsg.Resource_group_location
  resource_group_name = module.nsg.Resource_group_name
}

resource "azurerm_network_security_rule" "security_rule" {
  #count = length(var.security_rule)
  for_each = "${var.security_rule}"
  destination_application_security_group_ids = ["${azurerm_network_security_group.test-nsg.id}"]
  resource_group_name = module.nsg.Resource_group_name
  network_security_group_name = azurerm_network_security_group.test-nsg.name
  name                   = each.value.name
  priority               = each.value.priority
  direction              = each.value.direction
  access                 = each.value.access
  protocol               = each.value.protocol
  source_port_range      = each.value.source_port_range
  destination_port_range = each.value.destination_port_range
  source_address_prefix  = each.value.source_address_prefix
  description            = each.value.description
}