output "azurerm_storage_blob" {
  value = [for i in azurerm_storage_blob.just_learning : i.url]
}