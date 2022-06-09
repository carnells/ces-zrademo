#================================================================================
#
# VNETGW.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_location" {
    type = string
	default = "rg_location"
}
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "rg_tags" {
    type = map
}
variable "vnetgw_name" {
    type = string
	default = "vnetgw_name"
}
variable "vnetgw_type" {
    type = string
    default = "type"
}
variable "vnetgw_vpn_type" {
    type = string
    default = "vpn_type"
}
variable "vnetgw_active_active" {
    type = bool
    default = false
}
variable "vnetgw_enable_bgp" {
    type = bool
    default = false
}
variable "vnetgw_sku" {
    type = string
    default = "sku"
}
variable "vnetgw_ip_configuration_name" {
    type = string
    default = "ip_configuration_name"
}
variable "vnetgw_ip_configuration_public_ip_address_id" {
    type = string
    default = "public_ip_address_id"
}
variable "vnetgw_ip_configuration_private_ip_address_allocation" {
    type = string
    default = "private_ip_address_allocation"
}
variable "vnetgw_ip_configuration_subnet_id" {
    type = string
    default = "subnet_id"
}
variable "vnetgw_vpn_client_configuration_address_space" {
    type = list
    default = [
        "10.0.1.0/24"
    ]
}
variable "vnetgw_vpn_client_configuration_vpn_client_protocols" {
    type = list
    default = [
        "vpn_client_protocols"
    ]
}
variable "vnetgw_root_certificate_name" {
    type = string
    default = "vnetgw_root_certificate_name"
}
variable "vnetgw_root_certificate_public_cert_data" {

}
/*variable "vnetgw_bgp_settings_asn" {

}
variable "vnetgw_bgp_settings_peering_addresses" {

}
variable "vnetgw_bgp_settings_peer_weight" {

}*/
