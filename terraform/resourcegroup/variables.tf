variable "project_name" {
  description = "Nom du projet, utilisé pour le préfixe des ressources"
  type        = string
  default     = "rg-project"
  validation {
    condition     = length(var.project_name) > 0
    error_message = "Le nom du projet ne peut pas être vide."
  }
}

variable "resource_group_name" {
  description = "Nom du Resource Group Azure à créer"
  type        = string
  validation {
    condition     = length(var.resource_group_name) >= 1 && length(var.resource_group_name) <= 90
    error_message = "Le nom du Resource Group doit être entre 1 et 90 caractères."
  }
}

variable "location" {
  description = "Emplacement Azure où sera créé le Resource Group"
  type        = string
  default     = "France Central"
  validation {
    condition     = length(var.location) > 0
    error_message = "La localisation ne peut pas être vide."
  }
}

variable "environment" {
  description = "Environnement de déploiement (ex: dev, test, prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = can(regex("^(dev|test|prod)$", var.environment))
    error_message = "L'environnement doit être 'dev', 'test' ou 'prod'."
  }
}

variable "tags" {
  description = "Tags additionnels à appliquer aux ressources"
  type        = map(string)
  default     = {}
}
