terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0, < 5.0.0"
    }
  }
  required_version = ">= 1.3.0"

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
  description = "Resource Group pour le backend Terraform"
  type        = string
  default     = ""
}

variable "backend_storage_account" {
  description = "Storage Account pour le backend Terraform"
  type        = string
  default     = ""
}

variable "backend_container" {
  description = "Container Blob pour le backend Terraform"
  type        = string
  default     = ""
}