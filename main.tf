terraform {
  backend "azurerm" {
    resource_group_name  = "cloudnative_terraform"
    storage_account_name = "cloudnativeremotestate"
    container_name       = "dev"
    key                  = "shree-demo4.tfstate"
    }
}

provider "azurerm" {
  features {}
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "rg-My_Terraform1"
    location = "westus"
}