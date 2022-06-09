#================================================================================
#
# KEYVAULTKEY.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "keyvaultkey_name" {
    type = string
	default = "keyvaultkey_name"
}
variable "key_vault_id" {
	type = string
    default = "key_vault_id"
}
variable "key_type" {
	type = string
    default = "RSA"
}
variable "key_size" {
	type = number
    default = 2048
}
variable "key_opts" {
	type = list
    default = [
        "key_opts",
    ]
}