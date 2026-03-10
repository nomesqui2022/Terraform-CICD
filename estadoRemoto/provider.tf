terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
    azurecaf={
      source = "aztfmod/azurecaf"
      version = "1.2.10"
      }
   }
}

provider "azurerm" {
  features {}
  subscription_id = "0be5fccf-7280-4d80-8441-301dd08a907d"
}