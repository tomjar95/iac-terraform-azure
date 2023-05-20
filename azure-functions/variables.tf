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
  default     = "example"
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
  description = "Kind of application service plan"
  type        = string
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
  default     = "example-linux-function-app"
}




