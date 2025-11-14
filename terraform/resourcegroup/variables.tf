variable "resource_group_name" {
  description = "Nom du Resource Group Azure"
  type        = string
  validation {
    condition     = length(var.resource_group_name) >= 3 && length(var.resource_group_name) <= 90
    error_message = "Le nom du Resource Group doit contenir entre 3 et 90 caractères."
  }
}

variable "location" {
  description = "La région Azure où créer le Resource Group"
  type        = string
  validation {
    condition     = length(var.location) > 0
    error_message = "La localisation ne peut pas être vide."
  }
  default = "France Central"
}

variable "environment" {
  description = "Environnement de déploiement (ex: dev, prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = can(regex("^(dev|prod|staging|test)$", var.environment))
    error_message = "L'environnement doit être l'un de : dev, prod, staging, test."
  }
}

variable "tags" {
  description = "Tags additionnels à ajouter aux ressources"
  type        = map(string)
  default     = {}
}