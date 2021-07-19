module "rsg" {
  source = "github.com/RajanikanthGitHub/azurerm-modules//ResourceGroup"
}

# creating virtual network
resource "azurerm_virtual_network" "test-vnet" {
  name                = "${module.rsg.project_name_output}-${var.vnet_name}"
  location            = module.rsg.Resource_group_location 
  resource_group_name = module.rsg.Resource_group_name
  address_space       = ["${var.address_space}"]
}

# Creating Subnet for Virtual network
resource "azurerm_subnet" "test-subnet" {
  name                 = "${module.rsg.project_name_output}-${var.vnet_name}-${var.subnet_name[count.index]}"
  count                = length(var.subnet_name)
  resource_group_name  = module.rsg.Resource_group_name
  virtual_network_name = azurerm_virtual_network.test-vnet.name
  address_prefixes     = ["${var.subnet_prefix[count.index]}"]
}