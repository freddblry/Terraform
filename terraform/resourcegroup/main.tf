resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = merge({
    Environment = var.environment
    Project     = var.project_name
  }, var.tags)
}
