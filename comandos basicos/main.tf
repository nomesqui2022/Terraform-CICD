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
  
  location = "mexicocentral"
  name = var.rg_nombre
}


