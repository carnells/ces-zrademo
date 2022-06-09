#================================================================================
#
# VMWIN.TF

resource "azurerm_windows_virtual_machine" "example" {
  name                  = var.vmwin_name
  resource_group_name   = var.rg_name
  location              = var.rg_location
	tags                  = var.rg_tags
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_password

  computer_name         = var.computer_name
  license_type          = var.license_type
  network_interface_ids = var.network_interface_ids

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.source_image_reference_publisher
    offer     = var.source_image_reference_offer
    sku       = var.source_image_reference_sku
    version   = var.source_image_reference_version
  }
}

output "vmwin_id" {
  value = azurerm_windows_virtual_machine.example.id
}
output "vmwin_name" {
  value = azurerm_windows_virtual_machine.example.name
}
output "vmwin_computer_name" {
  value = azurerm_windows_virtual_machine.example.computer_name
}
output "vmwin_private_ip_address" {
  value = azurerm_windows_virtual_machine.example.private_ip_address
}
output "vmwin_virtual_machine_id" {
  value = azurerm_windows_virtual_machine.example.virtual_machine_id
}
output "vmwin_public_ip_address" {
  value = azurerm_windows_virtual_machine.example.public_ip_address
}