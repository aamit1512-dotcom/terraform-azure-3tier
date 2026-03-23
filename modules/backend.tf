terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstateamit123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}