#================================================================================
#
# PEER.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "peer_name" {
    type = string
	default = "peer_name"
}
variable "from_vnet_name" {
	type = string
    default = "from_vnet_name"
}
variable "to_vnet_id" {
    type = string
    default = "to_vnet_id"
}
variable "peer_allow_virtual_network_access" {
    type = bool
    default = true
}
variable "peer_allow_forwarded_traffic" {
    type = bool
    default = false
}
variable "peer_allow_gateway_transit" {
    type = bool
    default = false
}
