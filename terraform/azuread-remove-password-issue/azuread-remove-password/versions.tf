terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
        version = ">= 4.0.0, < 5.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 3.0.0, < 4.0.0"
    }
  }
}
