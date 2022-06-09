#================================================================================
#
# PEER.TF

resource "azurerm_virtual_network_peering" "example-1" {
  name                         = var.peer_name
  resource_group_name          = var.rg_name
  virtual_network_name         = var.from_vnet_name
  remote_virtual_network_id    = var.to_vnet_id
  allow_virtual_network_access = var.peer_allow_virtual_network_access
  allow_forwarded_traffic      = var.peer_allow_forwarded_traffic
  allow_gateway_transit        = var.peer_allow_gateway_transit
}

output "peer_id" {
    value = azurerm_virtual_network_peering.example-1.id
}
output "peer_name" {
    value = azurerm_virtual_network_peering.example-1.name
}