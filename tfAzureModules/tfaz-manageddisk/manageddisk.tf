#================================================================================
#
# MANAGEDDISK.TF

resource "azurerm_managed_disk" "example" {
  name                   = var.manageddisk_name
  location               = var.rg_location
  resource_group_name    = var.rg_name
  storage_account_type   = var.storage_account_type
  create_option          = var.create_option
  disk_size_gb           = var.disk_size_gb
  disk_encryption_set_id = var.disk_encryption_set_id
  disk_iops_read_write   = var.disk_iops_read_write
  disk_mbps_read_write   = var.disk_mbps_read_write
  #encryption_settings    = var.encryption_settings
  image_reference_id     = var.image_reference_id
  os_type                = var.os_type
  source_resource_id     = var.source_resource_id
  source_uri             = var.source_uri
  storage_account_id     = var.storage_account_id
  #zones                  = var.zones
}

output "manageddisk_id" {
    value = azurerm_managed_disk.example.id
}
output "manageddisk_name" {
    value = azurerm_managed_disk.example.name
}