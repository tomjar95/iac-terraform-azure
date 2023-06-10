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

resource "azurerm_storage_container" "just_learning" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.just_learning.name
  container_access_type = var.storage_container_access_type
}

resource "azurerm_storage_blob" "just_learning" {
  count                  = length(var.storage_blob_files)
  name                   = "${var.storage_blob_name}-${count.index}.png"
  storage_account_name   = azurerm_storage_account.just_learning.name
  storage_container_name = azurerm_storage_container.just_learning.name
  type                   = var.storage_blob_type
  source                 = var.storage_blob_files[count.index]
}

