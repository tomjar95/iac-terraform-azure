resource "azurerm_resource_group" "just_learning" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "just_learning" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}