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

resource "azurerm_app_service_plan" "just_learning" {
  name                = var.app_service_plan_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  kind                = var.app_service_plan_kind
  reserved            = var.app_service_plan_reserved

  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }
}

resource "azurerm_linux_function_app" "just_learning" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  storage_account_name       = var.storage_account_name
  service_plan_id            = azurerm_app_service_plan.just_learning.id

  site_config {
    application_stack {
      python_version = "3.9"
    }
  }
}

resource "azurerm_function_app_function" "just_learning" {
  name            = var.function_name
  function_app_id = azurerm_linux_function_app.just_learning.id
  language        = var.language
  test_data       = jsonencode(var.test_data)
  config_json     = jsonencode(var.config_json)
}