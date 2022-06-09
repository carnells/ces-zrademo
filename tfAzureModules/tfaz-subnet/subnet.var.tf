#================================================================================
#
# SUBNET.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
	type = string
	default = "rg_name"
}
variable "subnet_name" {
	type = string
    default = "subnet_name"
}
variable "vnet_name" {
    type = string
	default = "vnet_name"
}
variable "subnet_prefixes" {
    type = list
    default = [
        "10.0.1.0/24"
    ]
}