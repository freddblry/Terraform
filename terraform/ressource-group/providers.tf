terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.60.0, < 5.0.0"
    }
  }

  backend "local" {}
}

provider "azurerm" {
  features {}
}
