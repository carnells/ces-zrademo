#================================================================================
#
# BASTIONS.VAR.TF

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
variable "bastions_name" {
    type = string
	default = "bastions_name"
}
variable "ip_configuration_name" {
    type = string
    default = "configuration"
}
variable "ip_configuration_subnet_id" {
    type = string
    default = "ip_configuration_subnet_id"
}
variable "ip_configuration_public_ip_address_id" {
    type = string
    default = "ip_configuration_public_ip_address_id"
}