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
  subscription_id = "bcb90759-77e9-40de-824e-4598ecc74a22"
  client_id       = "f8a9371a-9641-4b51-9471-ae44c0268d6a"
  client_secret   = "ldBHE2MLgCaChx4o08ndC-KE9nA2c_~V_Z"
  tenant_id       = "6dd0e481-0ee7-48c1-9a0a-bff931424a20"
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "rg-My_Terraform1"
    location = "westus"
}