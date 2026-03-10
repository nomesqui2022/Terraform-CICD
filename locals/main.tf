provider "azurerm" {
  features {}
  subscription_id = "0be5fccf-7280-4d80-8441-301dd08a907d"
}

variable "rg_nombre"{
    type = string
   
}

locals{
    group_name = "amines${var.rg_nombre}"
}

resource "azurerm_resource_group" "rg" {
  
  location = "mexicocentral"
  name = local.group_name
}


