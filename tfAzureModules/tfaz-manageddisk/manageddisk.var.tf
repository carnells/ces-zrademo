#================================================================================
#
# MANAGEDDISK.VAR.TF

variable "rg_location" {
    type = string
	default = "rg_location"
}
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "manageddisk_name" {
    type = string
	default = "manageddisk_name"
}
variable "storage_account_type" {
    type = string
	default = "Standard_LRS"
}
variable "create_option" {
    type = string
	default = "Empty"
}
variable "disk_size_gb" {
    type = string
	default = null
}
variable "disk_encryption_set_id" {
    type = string
	default = null
}
variable "disk_iops_read_write" {
    type = string
	default = null
}
variable "disk_mbps_read_write" {
    type = string
    default = null
}
variable "encryption_settings" {
    type = string
    default = null
}
variable "image_reference_id" {
    type = string
    default = null
}
variable "os_type" {
    type = string
    default = null
}
variable "source_resource_id" {
    type = string
    default = null
}
variable "source_uri" {
    type = string
    default = null
}
variable "storage_account_id" {
    type = string
    default = null
}
variable "zones" {
    type = string
    default = null
}
