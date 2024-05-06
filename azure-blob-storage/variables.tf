variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
}

variable "blob_name" {
  description = "The name of the blob"
  type        = string
}

variable "blob_source" {
  description = "The source file of the blob"
  type        = string
}
