#================================================================================
#
# DATADISKATTACH.VAR.TF

variable "managed_disk_id" {
    type = string
	default = "managed_disk_id"
}
variable "virtual_machine_id" {
    type = string
	default = "virtual_machine_id"
}
variable "lun" {
    type = number
	default = 10
}
variable "caching" {
    type = string
	default = "ReadWrite"
}
variable "create_option" {
    type = string
	default = "Attach"
}
variable "write_accelerator_enabled" {
    type = string
	default = "false"
}
