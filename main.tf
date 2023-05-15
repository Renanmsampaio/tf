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
  tenant_id       = "a677c06b-f6e8-43f8-b1ad-f9c2b9542d42"
  subscription_id = "75005f66-ab95-41f1-9463-0b7e2dee4ac3"
}
