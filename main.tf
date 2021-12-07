variable SUBSCRIPTION_ID {}



locals {
  virtual_machine_name = var.prefix
}

 terraform {
  required_version = ">= 0.11" 
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate166916541"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    #access_key  = var.TERRAFORM_STORAGE_KEY
    }
}

provider "azurerm" {
  subscription_id = var.SUBSCRIPTION_ID
  #version         = "=2.71.0"
  features {
  }
}

#data "azurerm_subscription" "current" {}

resource "azurerm_resource_group" "resource_group" {
  name = var.resource_group
  location = var.location
}

 