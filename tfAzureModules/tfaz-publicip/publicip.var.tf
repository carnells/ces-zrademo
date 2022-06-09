#================================================================================
#
# PUBLICIP.VAR.TF

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
variable "publicip_name" {
    type = string
	default = "publicip_name"
}
variable "allocation_method" {
	type = string
    default = "allocation_method"
}
variable "sku" {
	type = string
    default = "Basic"
}
variable "domain_name_label" {
	type = string
	default = null
}