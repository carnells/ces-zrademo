#================================================================================
#
# VNET.VAR.TF

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
variable "vnet_name" {
    type = string
	default = "vnet_name"
}
variable "vnet_address_space" {
	type = list
	default = [
		"10.0.0.0/8"
	]
}
variable "vnet_dns_servers" {
	type = list
	default = [
		"10.0.0.11",
		"10.0.0.12"
	]
}