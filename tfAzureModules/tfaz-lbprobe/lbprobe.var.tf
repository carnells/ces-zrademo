#================================================================================
#
# LBPROBE.VAR.TF

variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "lbprobe_name" {
	type = string
	default = "lbprobe_name"
}
variable "lbprobe_lb_id" {
	type = string
	default = "lbprobe_lb_id"
}
variable "lbprobe_protocol" {
	type = string
	default = null
}
variable "lbprobe_port" {
	type = number
	default = 443
}
variable "lbprobe_request_path" {
	type = string
	default = null
}
variable "lbprobe_interval_in_seconds" {
	type = number
	default = 5
}
