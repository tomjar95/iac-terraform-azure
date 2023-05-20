resource "azurerm_resource_group" "just_learning" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
