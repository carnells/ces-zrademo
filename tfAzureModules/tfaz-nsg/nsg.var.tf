#================================================================================
#
# NSG.VAR.TF

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
variable "nsg_name" {
    type = string
	default = "nsg_name"
}
/*variable "security_rule_access" {
    type = string
	default = "security_rule_access"
}
variable "security_rule_description" {
    type = string
	default = "security_rule_description"
}
variable "security_rule_destination_address_prefix" {
    type = string
	default = "security_rule_destination_address_prefix"
}
variable "security_rule_destination_address_prefixes" {
    type = list
	default = []
}
variable "security_rule_destination_application_security_group_ids" {
    type = list
	default = []
}
variable "security_rule_destination_port_range" {
    type = string
	default = "security_rule_destination_port_range"
}
variable "security_rule_destination_port_ranges" {
    type = list
	default = []
}
variable "security_rule_direction" {
    type = string
	default = "security_rule_direction"
}
variable "security_rule_name" {
    type = string
	default = "security_rule_name"
}
variable "security_rule_priority" {
    type = number
	default = 0
}
variable "security_rule_protocol" {
    type = string
	default = "security_rule_protocol"
}
variable "security_rule_source_address_prefix" {
    type = string
	default = "security_rule_source_address_prefix"
}
variable "security_rule_source_address_prefixes" {
    type = list
	default = []
}
variable "security_rule_source_application_security_group_ids" {
    type = list
	default = []
}
variable "security_rule_source_port_range" {
    type = string
	default = "security_rule_source_port_range"
}
variable "security_rule_source_port_ranges" {
    type = list
	default = []
}*/