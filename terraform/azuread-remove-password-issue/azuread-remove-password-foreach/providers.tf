provider "azuread" {
  tenant_id = "PUT HERE TENANT ID"
}

provider "azurerm" {
  subscription_id = "PUT HERE SUBSCRIPTION ID"
  features {}
}
