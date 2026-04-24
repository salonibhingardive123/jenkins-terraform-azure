terraform {
  backend "azurerm" {
    resource_group_name = "tf-state-rg"
    storage_account_name = "newtjatask"
    container_name = "newtfstatecontainer"
    key="terraform.tfstate"
  }
} 