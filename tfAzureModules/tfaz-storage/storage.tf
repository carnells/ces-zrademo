#================================================================================
#
# STORAGE.TF

resource "azurerm_storage_account" "example" {
  name                      = var.storage_name
  resource_group_name       = var.rg_name
  tags                      = var.rg_tags
  location                  = var.rg_location
  account_tier              = var.account_tier
  access_tier               = var.access_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = var.enable_https_traffic_only
  allow_blob_public_access  = var.allow_blob_public_access
}

output "storage_id" {
    value = azurerm_storage_account.example.id
}
output "storage_name" {
    value = azurerm_storage_account.example.name
}
output "storage_pri_location" {
    value = azurerm_storage_account.example.primary_location
}
output "storage_sec_location" {
    value = azurerm_storage_account.example.secondary_location
}
output "storage_pri_blob_endpoint" {
    value = azurerm_storage_account.example.primary_blob_endpoint
}
output "storage_sec_blob_endpoint" {
    value = azurerm_storage_account.example.secondary_blob_endpoint
}
output "storage_pri_access_key" {
    value = azurerm_storage_account.example.primary_access_key
}
output "storage_pri_connect_string" {
    value = azurerm_storage_account.example.primary_connection_string
}