provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate4497"
    container_name        = "tstate"
    key                   = "tstate"
  }
}
