terraform{
     backend "azurerm"{
        storage_account_name = "estadosterraformjohn"
        container_name       = "githubactionstates"
        key = "estados.tfstate"
     }
}
