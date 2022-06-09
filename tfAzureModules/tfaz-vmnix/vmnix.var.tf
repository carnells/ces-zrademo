#================================================================================
#
# VM_NIX.VAR.TF

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
variable "vmnix_name" {
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
    default = "Canonical"
}
variable "source_image_reference_offer" {
    type = string
    default = "UbuntuServer"
}
variable "source_image_reference_sku" {
    type = string
    default = "18.04-LTS"
}
variable "source_image_reference_version" {
    type = string
    default = "latest"
}