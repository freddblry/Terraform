output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_primary_endpoint" {
  description = "Primary Blob Endpoint of the Storage Account"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}
