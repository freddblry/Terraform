variable "prefix" {
  description = "Prefix for resource names to ensure uniqueness and naming standards"
  type        = string
  default     = "tf"
  validation {
    condition     = length(var.prefix) >= 2 && length(var.prefix) <= 5
    error_message = "Prefix must be between 2 and 5 characters."
  }
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of 'dev', 'staging', 'prod'."
  }
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "eastus"
  validation {
    condition     = length(var.location) > 0
    error_message = "Location cannot be empty."
  }
}

variable "storage_account_tier" {
  description = "The Tier of the storage account"
  type        = string
  default     = "Standard"
  validation {
    condition     = contains(["Standard", "Premium"], var.storage_account_tier)
    error_message = "Storage account tier must be either 'Standard' or 'Premium'."
  }
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.storage_account_replication_type)
    error_message = "Replication type must be one of 'LRS', 'GRS', 'RAGRS', 'ZRS', 'GZRS', 'RAGZRS'."
  }
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Project = "TerraformStorageAccount"
  }
}
