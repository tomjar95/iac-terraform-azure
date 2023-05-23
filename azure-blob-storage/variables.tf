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

variable "storage_container_name" {
  description = "Name of storage container"
  type        = string
  default     = "content"
}

variable "storage_container_access_type" {
  description = "Access type of storage container"
  type        = string
  default     = "private"
}

variable "storage_blob_name" {
  description = "Name of storage blob"
  type        = string
  default     = "my-awesome-content.zip"
}

variable "storage_blob_type" {
  description = "Type of storage blob"
  type        = string
  default     = "Block"
}