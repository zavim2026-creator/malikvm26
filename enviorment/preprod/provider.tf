terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ayub-rg"
    storage_account_name = "ayubstorage1"
    container_name       = "ayubcontainer"
    key                  = "rg.tfstate"
  }

}

provider "azurerm" {
  features {}
}
