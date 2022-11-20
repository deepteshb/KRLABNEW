resource "azurerm_resource_group" "RG1" {
  name     = "RG-1"
  location = "East US"
}

resource "azurerm_virtual_network" "VNET1" {
  name                = "vnet-1"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.RG1.name
  location            = azurerm_resource_group.RG1.location
}

resource "azurerm_subnet" "subnet-1" {
  name = "subnet-1-public"
  resource_group_name = azurerm_resource_group.RG1.name
  virtual_network_name = azurerm_virtual_network.VNET1.name
  address_prefixes = ["10.0.1.0/24"]
  location = azurerm_resource_group.RG1.location
}
