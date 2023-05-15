terraform {
  #configure Azure provider
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.56.0"
    }
  }
  # Configure terraform remote state
  backend "azurerm" {
    resource_group_name  = "RGREMOTESTATE"
    storage_account_name = "remotestate20330514"
    container_name       = "remotestatetf"
    key                  = "prod.terraform.tfstate"
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  tenant_id       = ""
  subscription_id = ""
}
