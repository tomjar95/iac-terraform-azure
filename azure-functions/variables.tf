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