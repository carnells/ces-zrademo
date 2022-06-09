#================================================================================
#
# RG.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
    default = "rg_name"
}
variable "rg_location" {
    type = string
    default = "rg_location"
}
variable "rg_tags" {
    type = map
}