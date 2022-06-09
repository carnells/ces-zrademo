#================================================================================
#
# LBRULE.VAR.TF

variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "lbrule_name" {
	type = string
	default = "lbrule_name"
}
variable "lb_id" {
	type = string
	default = "lb_id"
}
variable "lbrule_protocol" {
	type = string
	default = "lbrule_protocol"
}
variable "lbrule_frontend_port" {
	type = number
	default = 443
}
variable "lbrule_backend_port" {
	type = number
	default = 443
}
variable "lbrule_frontend_ip_configuration_name" {
    type = string
    default = "lbrule_frontend_ip_configuration_name"
}
variable "lbrule_backend_address_pool_id" {
    type = string
    default = "lbrule_backend_address_pool_id"
}
variable "lbrule_probe_id" {
    type = string
    default = "lbrule_probe_id"
}
