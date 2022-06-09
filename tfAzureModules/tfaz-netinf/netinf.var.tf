#================================================================================
#
# NETINF.VAR.TF

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
variable "netinf_name" {
    type = string
	default = "netinf_name"
}
variable "ip_configuration_name" {
    type = string
	default = "internal"
}
variable "ip_configuration_private_ip_address_version" {
    type = string
	default = "IPv4"
}
variable "ip_configuration_subnet_id" {
    type = string
	default = "ip_configuration_subnet_id"
}
variable "ip_configuration_private_ip_address_allocation" {
    type = string
	default = "Dynamic"
}
variable "ip_configuration_private_ip_address" {
    type = string
	default = null
}
variable "ip_configuration_public_ip_address_id" {
    type = string
    default = null
}