#================================================================================
#
# VNETGW.TF

resource "azurerm_virtual_network_gateway" "example" {
  #count = var.to_provision == true ? 1 : 0
  location                        = var.rg_location
  resource_group_name             = var.rg_name
  tags                            = var.rg_tags

  name                            = var.vnetgw_name
  type                            = var.vnetgw_type
  vpn_type                        = var.vnetgw_vpn_type
  active_active                   = var.vnetgw_active_active
  enable_bgp                      = var.vnetgw_enable_bgp
  sku                             = var.vnetgw_sku

  ip_configuration {
    name                          = var.vnetgw_ip_configuration_name
    public_ip_address_id          = var.vnetgw_ip_configuration_public_ip_address_id
    private_ip_address_allocation = var.vnetgw_ip_configuration_private_ip_address_allocation
    subnet_id                     = var.vnetgw_ip_configuration_subnet_id
  }

  vpn_client_configuration {
    address_space                 = var.vnetgw_vpn_client_configuration_address_space
    vpn_client_protocols          = var.vnetgw_vpn_client_configuration_vpn_client_protocols

    root_certificate {
      name                        = var.vnetgw_root_certificate_name
      public_cert_data            = var.vnetgw_root_certificate_public_cert_data
    }

  }
  
  /*bgp_settings {
    asn                           = var.vnetgw_bgp_settings_asn
    peering_address             = var.vnetgw_bgp_settings_peering_addresses
    peer_weight                   = var.vnetgw_bgp_settings_peer_weight
  }*/

}

output "vnetgw_id" {
    value = azurerm_virtual_network_gateway.example.id
}
output "vnetgw_name" {
    value = azurerm_virtual_network_gateway.example.name
}
