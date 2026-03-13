provider "azurerm" {
  features {}
  subscription_id = "0be5fccf-7280-4d80-8441-301dd08a907d"
}


resource "azurerm_resource_group" "rg" {
  
  location = "eastus2"
  name = "cicd-group"
}

resource "azurerm_storage_account" "storage" {
  name                = "continousdeployment"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  account_tier                 = "Standard"
  account_replication_type      = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "platzibog"
  storage_account_id  = azurerm_storage_account.storage.id 
  container_access_type = "container"
}


