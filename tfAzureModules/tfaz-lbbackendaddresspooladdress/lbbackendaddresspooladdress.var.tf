#================================================================================
#
# LBBACKENDADDRESSPOOLADDRESS.VAR.TF

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
variable "lb_backendaddresspooladdress_name" {
    type = string
	default = "lb_backendaddresspooladdress_name"
}
variable "lb_backendaddresspooladdress_backend_address_pool_id" {
    type = string
	default = "lb_backendaddresspooladdress_backend_address_pool_id"
}
variable "lb_backendaddresspooladdress_virtual_network_id" {
    type = string
	default = "lb_backendaddresspooladdress_virtual_network_id"
}
variable "lb_backendaddresspooladdress_ip_address" {
    type = string
    default = "lb_backendaddresspooladdress_ip_address"
}
