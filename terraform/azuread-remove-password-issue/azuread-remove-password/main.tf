resource "azuread_application" "application" {
  display_name    = join("-", ["sp", var.display_name])
  owners          = var.owners
  identifier_uris = []
  description     = ""

  lifecycle {
    ignore_changes = [
      identifier_uris,
    ]
  }
}

resource "azuread_application_identifier_uri" "application_client_id" {
  depends_on = [azuread_application.application]

  application_id = azuread_application.application.id
  identifier_uri = "api://${azuread_application.application.client_id}"
}

resource "azuread_service_principal" "service_principal" {
  client_id                    = azuread_application.application.client_id
  app_role_assignment_required = false
  owners                       = var.owners
  description                  = ""

  feature_tags {
    enterprise = false
    gallery    = false
    hide       = true
  }
}

resource "azuread_application_password" "application_password" {
  depends_on = [azuread_application.application]

  application_id = azuread_application.application.id
  display_name   = "remove-me"
}
