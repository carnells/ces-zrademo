#================================================================================
#
# NETINF.TF

resource "azurerm_network_interface" "example" {
  name                = var.netinf_name
  resource_group_name = var.rg_name
  location            = var.rg_location
	tags                = var.rg_tags

  ip_configuration {
    name                          = var.ip_configuration_name
    private_ip_address_version    = var.ip_configuration_private_ip_address_version
    subnet_id                     = var.ip_configuration_subnet_id
    private_ip_address_allocation = var.ip_configuration_private_ip_address_allocation
    private_ip_address            = var.ip_configuration_private_ip_address
    public_ip_address_id          = var.ip_configuration_public_ip_address_id
  }
}

output "netinf_id" {
    value = azurerm_network_interface.example.id
}
output "netinf_name" {
    value = azurerm_network_interface.example.name
}
output "netinf_private_ip_address" {
    value = azurerm_network_interface.example.private_ip_address
}
output "netinf_virtual_machine_id" {
    value = azurerm_network_interface.example.virtual_machine_id
}