terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "firstresourcegroup" {
    name = "resourcegroup01"
    location = "eastus2"
}

resource "azurerm_storage_account" "firststorageaccount" {
  name                = "storageaccount1203"
  resource_group_name = azurerm_resource_group.firstresourcegroup.name
  location            = azurerm_resource_group.firstresourcegroup.location
  account_tier        = "standard"
  accoun_replication_type = "GRS"
  }
}
