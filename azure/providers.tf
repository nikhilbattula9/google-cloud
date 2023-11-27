terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.71.0"
    }
  }

  required_version = ">= 1.3.4"

  backend "azurerm" {
    resource_group_name = "rg-access"
    storage_account_name = "githubactions9"
    container_name      = "terraform"
    key = "tfstate"
  }



  

}

provider "azurerm" {
  features {}
}
