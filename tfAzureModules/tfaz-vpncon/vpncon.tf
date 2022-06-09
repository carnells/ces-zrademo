#================================================================================
#
# CONNECTION.TF

resource "azurerm_virtual_network_gateway_connection" "example" {
  #count = var.to_provision == true ? 1 : 0
  name                = var.vpncon_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  type                       = "IPsec"
  virtual_network_gateway_id = var.vpncon_vnetgw_id
  local_network_gateway_id   = var.vpncon_localgw_id
  shared_key = var.vpncon_shared_key
}

output "vpncon_id" {
  value = azurerm_virtual_network_gateway_connection.example.id
}
output "vpncon_name" {
  value = azurerm_virtual_network_gateway_connection.example.name
}