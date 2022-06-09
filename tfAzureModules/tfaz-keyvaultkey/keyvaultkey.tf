#================================================================================
#
# KEYVAULTKEY.TF

resource "azurerm_key_vault_key" "generated" {
  name         = var.keyvaultkey_name
  key_vault_id = var.key_vault_id
  key_type     = var.key_type
  key_size     = var.key_size

  key_opts = var.key_opts
}

output "keyvaultkey_id" {
    value = azurerm_key_vault_key.generated.id
}
output "keyvaultkey_name" {
    value = azurerm_key_vault_key.generated.name
}
output "keyvaultkey_version" {
    value = azurerm_key_vault_key.generated.version
}