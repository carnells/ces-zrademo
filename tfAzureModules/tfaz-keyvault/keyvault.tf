#================================================================================
#
# KEYVAULT.TF

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "example" {
  name                        = var.keyvault_name
  location                    = var.rg_location
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  enabled_for_deployment      = var.enabled_for_deployment
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.sku_name

  /*access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = var.access_policy_key_permissions
    secret_permissions = var.access_policy_secret_permissions
    storage_permissions = var.access_policy_storage_permissions
    certificate_permissions = var.access_policy_certificate_permissions
  }*/
}

output "keyvault_id" {
    value = azurerm_key_vault.example.id
}
output "keyvault_name" {
    value = azurerm_key_vault.example.name
}
output "keyvault_vault_uri" {
    value = azurerm_key_vault.example.vault_uri
}