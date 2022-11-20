resource "azurerm_virtual_network" "VNET_1" {
  name                = "MAIN-VNET"
  location            = "East US"
  resource_group_name = azurerm_resource_group.RG_1.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = {
    environment = "Production"
  }
}


