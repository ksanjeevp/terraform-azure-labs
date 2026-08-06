data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

# 2. Create the Virtual Network (VNet)

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = var.location
  address_space       = ["10.0.0.0/16"] 
  resource_group_name = data.azurerm_resource_group.rg.name
}

