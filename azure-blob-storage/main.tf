resource "azurerm_resource_group" "storage" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.storage.name
  location                 = azurerm_resource_group.storage.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage" {
  name                  = "mycontainer"
  storage_account_name = azurerm_storage_account.storage.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example" {
  name                   = "exampleblob"
  storage_account_name  = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.storage.name
  type                   = "Block"
  source                 = "example-file.txt"
}
