terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = var.backend_resource_group
    storage_account_name = var.backend_storage_account
    container_name       = var.backend_container
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

variable "backend_resource_group" {
  description = "Resource group name for remote state storage backend"
  type        = string
}

variable "backend_storage_account" {
  description = "Storage account name for remote state storage backend"
  type        = string
}

variable "backend_container" {
  description = "Storage container name for remote state storage backend"
  type        = string
}
