#================================================================================
#
# LOCALGW.TF

resource "azurerm_local_network_gateway" "prem" {
  #count = var.to_provision == true ? 1 : 0
  name                = var.localgw_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  tags                = var.rg_tags

  gateway_address     = var.gateway_address
  address_space       = var.address_space
}

output "localgw_id" {
  value = azurerm_local_network_gateway.prem.id
}
output "localgw_name" {
  value = azurerm_local_network_gateway.prem.name
}