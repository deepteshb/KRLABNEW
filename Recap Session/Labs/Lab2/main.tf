resource "azurerm_resource_group" "RG" {
count = length(var.RG_NAME)
  name     =  "${var.prefix}-${count.index}"
  location = "East US"
}

data "azurerm_subscriptions" "available" {
}

output "available_subscriptions" {
  value = data.azurerm_subscriptions.available.subscriptions
}

output "first_available_subscription_display_name" {
  value = data.azurerm_subscriptions.available.subscriptions[0].display_name
}