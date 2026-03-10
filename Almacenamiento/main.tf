terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0be5fccf-7280-4d80-8441-301dd08a907d"
}


resource "azurerm_resource_group" "rg" {
  
  location = "brazilsouth"
  name = "grupoAlmacenamiento"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "johndevplatzi"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false

  tags = {
    environment = "staging"
  }
}

output "cadena_conexion"{
    value = azurerm_storage_account.storage_account.primary_connection_string
    sensitive = true
}

