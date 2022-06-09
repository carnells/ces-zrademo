#================================================================================
#
# KEYVAULTACCESSPOLICY.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "key_vault_id" {
    type = string
	default = "key_vault_id"
}
variable "object_id" {
    type = string
	default = null
}
variable "application_id" {
    type = string
	default = null
}
variable "key_permissions" {
    type = list
	default = [
        "get"
    ]
}
variable "secret_permissions" {
    type = list
	default = [
        "get"
    ]
}
variable "storage_permissions" {
    type = list
	default = [
        "get"
    ]
}
variable "certificate_permissions" {
    type = list
	default = [
        "get"
    ]
}