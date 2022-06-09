#================================================================================
#
# LOCALGW.VAR.TF

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
variable "localgw_name" {
    type = string
	default = "localgw_name"
}
variable "gateway_address" {
	type = string
    default = "10.255.255.254"
}
variable "address_space" {
    type = list
    default = [
        "10.0.0.0/16"
    ]
}