terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0be5fccf-7280-4d80-8441-301dd08a907d"
}


resource "azurerm_resource_group" "rg" {
  
  location = "eastus2"
  name = "azure-functions-test-rg"
}

module "azurefunction" {
  source  = "nomesqui2022/azurefunctions/azurerm"
  rg_name = azurerm_resource_group.azurerm_resource_group.name
  rg_location = azurerm_resource_group.azurerm_resource_group.location
  storage_account_name = "functionsapptest23"
  app_service_name = "azure-functions-test-service-plan"
  function_name = "curso-platzi-function"
  storage_account_tier = "premium"
  storage_replication_type = "LRS"
  app_service_plan_sku_tier = "basic"
  app_service_plan_sku_size = "B2"

}
