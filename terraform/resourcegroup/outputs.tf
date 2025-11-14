output "resource_group_name" {
  description = "Nom du Resource Group créé"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Localisation du Resource Group"
  value       = azurerm_resource_group.rg.location
}