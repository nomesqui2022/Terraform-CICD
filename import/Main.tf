provider "azurerm" {
  features {}
  subscription_id = "0be5fccf-7280-4d80-8441-301dd08a907d"
}

import {
    to = azurerm_storage_account.mi_cuenta 
    id = "/subscriptions/0be5fccf-7280-4d80-8441-301dd08a907d/resourceGroups/LogsGroup/providers/Microsoft.Storage/storageAccounts/pruebas2026"
}

resource "azurerm_storage_account" "mi_cuenta" {
  name                     = "pruebas2026"
  resource_group_name      = "LogsGroup"
  location                 = "Brazil South"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

