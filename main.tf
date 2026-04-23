provider "azurerm" {
    features {
      
    }
}

resource "azurerm_resource_group" "rg" {
  name = "rg-jenkins-demo"
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name = "salonistorage1234523"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = var.sa_tier
  account_replication_type = var.sa_rep_type
}