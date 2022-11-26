resource "azurerm_resource_group" "RG_1" {
  name     = var.resource_group_name
  location = var.production_location
}

resource "azurerm_virtual_network" "my_vnet" {
 name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.RG_1.location
  resource_group_name = azurerm_resource_group.RG_1.name

}


resource "azurerm_subnet" "subnet_1" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.RG_1.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = ["10.0.2.0/24"]

}

resource "azurerm_network_interface" "network_interfaces" {
  name                = "linux_vm_internet_nic"
  location            = azurerm_resource_group.RG_1.location
  resource_group_name = azurerm_resource_group.RG_1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet_1.id
    private_ip_address_allocation = "Dynamic"
  }

}

