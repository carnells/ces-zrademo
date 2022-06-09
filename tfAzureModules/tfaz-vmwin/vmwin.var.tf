#================================================================================
#
# VM_WIN.VAR.TF

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
variable "vmwin_name" {
    type = string
	default = null
}
variable "size" {
    type = string
	default = "Standard_B2s"
}
variable "admin_username" {
    type = string
	default = "adminlocal"
}
variable "admin_password" {
    type = string
	default = "Password#1Password#1"
}
variable "computer_name" {
    type = string
	default = "computer_name"
}
variable "license_type" {
    type = string
	default = "Windows_Server"
}
variable "network_interface_ids" {
    type = list
}
variable "os_disk_caching" {
    type = string
    default = "ReadWrite"
}
variable "os_disk_storage_account_type" {
    type = string
    default = "Standard_LRS"
}
variable "source_image_reference_publisher" {
    type = string
    default = "MicrosoftWindowsServer"
}
variable "source_image_reference_offer" {
    type = string
    default = "WindowsServer"
}
variable "source_image_reference_sku" {
    type = string
    default = "2019-Datacenter"
}
variable "source_image_reference_version" {
    type = string
    default = "latest"
}