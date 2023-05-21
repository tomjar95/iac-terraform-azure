variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "test"
}

variable "resource_group_location" {
  description = "Location of the resource group."
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "test9508storage"
}

variable "storage_account_tier" {
  description = "Tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Replication type of the storage account"
  type        = string
  default     = "GRS"
}

variable "app_service_plan_name" {
  description = "Name of application service plan"
  type        = string
  default     = "justAnotherName"
}

variable "app_service_plan_kind" {
  description = "Kind of application service plan"
  type        = string
  default     = "Linux"
}

variable "app_service_plan_reserved" {
  description = "Is the application service plan reserved"
  type        = bool
  default     = "true"
}

variable "app_service_plan_tier" {
  description = "Tier of application service plan"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_size" {
  description = "Size of application service plan"
  type        = string
  default     = "S1"
}

variable "function_app_name" {
  description = "Name of application's function"
  type        = string
  default     = "function95-app08-test3"
}

variable "function_name" {
  description = "Name of the function app function"
  type        = string
  default     = "just-for-testing2"
}

variable "language" {
  description = "Programming language of the function"
  type        = string
  default     = "Python"
}

variable "test_data" {
  description = "Test data for the function"
  type        = map(any)
  default     = {
    "name" = "Azure"
  }
}

variable "config_json" {
  description = "Configuration JSON for the function"
  type        = map(any)
  default     = {
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods"   = ["get", "post"]
        "name"      = "req"
        "type"      = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      },
    ]
  }
}

variable "python_version" {
  description = "Python version"
  type        = string
  default     = "3.9"
}
