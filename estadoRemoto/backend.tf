terraform{
     backend "azurerm"{
        storage_account_name = "estadosterraformjohn"
        container_name       = "states"
        key = "estados.tfstate"
     }
}
