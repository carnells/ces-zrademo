#================================================================================
#
# KEYVAULTACCESSPOLICY.TF

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_access_policy" "example" {
    key_vault_id            = var.key_vault_id
    tenant_id               = data.azurerm_client_config.current.tenant_id
    object_id               = var.object_id
    application_id          = var.application_id
    key_permissions         = var.key_permissions
    secret_permissions      = var.secret_permissions
    storage_permissions     = var.storage_permissions
    certificate_permissions = var.certificate_permissions
}

output "keyvaultaccesspolicy_id" {
    value = azurerm_key_vault_access_policy.example.id
}