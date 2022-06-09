#================================================================================
#
# NSR.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
	type = string
	default = "rg_name"
}
variable "nsr_name" {
    type = string
	default = "nsr_name"
}
variable "network_security_group_name" {
    type = string
    default = "network_security_group_name"
}
variable "security_rule_access" {
    type = string
	default = null
}
variable "security_rule_description" {
    type = string
	default = null
}
variable "security_rule_destination_address_prefix" {
    type = string
	default = null
}
variable "security_rule_destination_address_prefixes" {
    type = list
	default = null
}
variable "security_rule_destination_application_security_group_ids" {
    type = list
	default = null
}
variable "security_rule_destination_port_range" {
    type = string
	default = null
}
variable "security_rule_destination_port_ranges" {
    type = list
	default = null
}
variable "security_rule_direction" {
    type = string
	default = null
}
variable "security_rule_priority" {
    type = number
	default = 0
}
variable "security_rule_protocol" {
    type = string
	default = null
}
variable "security_rule_source_address_prefix" {
    type = string
	default = null
}
variable "security_rule_source_address_prefixes" {
    type = list
	default = null
}
variable "security_rule_source_application_security_group_ids" {
    type = list
	default = null
}
variable "security_rule_source_port_range" {
    type = string
	default = null
}
variable "security_rule_source_port_ranges" {
    type = list
	default = null
}