module "azuread-remove-password" {
  source = "../azuread-remove-password"

  for_each = toset(["1", "2", "3", "4"])

  display_name = each.value
}
