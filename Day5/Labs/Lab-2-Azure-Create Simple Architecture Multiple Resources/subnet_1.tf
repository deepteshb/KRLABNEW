resource "azurerm_subnet" "subnet_1" {
  name = "subnet-1-public"
  resource_group_name = azurerm_resource_group.RG_1.name
  virtual_network_name = azurerm_virtual_network.VNET_1.name
  address_prefixes = ["10.0.1.0/24"]
}