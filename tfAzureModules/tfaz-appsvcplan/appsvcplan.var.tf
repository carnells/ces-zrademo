#================================================================================
#
# APPSVCPLAN.VAR.TF

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
variable "appsvcplan_name" {
    type = string
    default = "appsvcplan_name"
}
variable "kind" {
    type = string
    default = "Windows"
}
variable "reserved" {
    type = bool
    default = false
}
variable "is_xenon" {
    type = bool
    default = false
}
variable "sku_tier" {
    type = string
    default = "Basic"
}
variable "sku_size" {
    type = string
    default = "B2"
}
/*variable "sku_capacity" {
    type = number
    default = 1
}*/