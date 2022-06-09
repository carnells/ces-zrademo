#================================================================================
#
# vmnix.TF

resource "azurerm_linux_virtual_machine" "example" {
  name                            = var.vmnix_name
  resource_group_name             = var.rg_name
  location                        = var.rg_location
	tags                            = var.rg_tags
  size                            = var.size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password

  computer_name                   = var.computer_name
  disable_password_authentication = false
  network_interface_ids           = var.network_interface_ids

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

output "vmnix_id" {
  value = azurerm_linux_virtual_machine.example.id
}
output "vmnix_name" {
  value = azurerm_linux_virtual_machine.example.name
}
output "vmnix_computer_name" {
  value = azurerm_linux_virtual_machine.example.computer_name
}
output "vmnix_private_ip_address" {
  value = azurerm_linux_virtual_machine.example.private_ip_address
}
output "vmnix_virtual_machine_id" {
  value = azurerm_linux_virtual_machine.example.virtual_machine_id
}
output "vmnix_public_ip_address" {
  value = azurerm_linux_virtual_machine.example.public_ip_address
}