#================================================================================
#
# NSR.TF

resource "azurerm_network_security_rule" "example" {
    name                         = var.nsr_name
    resource_group_name          = var.rg_name
    network_security_group_name  = var.network_security_group_name

    # security_rule
    access                                     = var.security_rule_access
    description                                = var.security_rule_description
	destination_address_prefix                 = var.security_rule_destination_address_prefix
	destination_address_prefixes               = var.security_rule_destination_address_prefixes
	destination_application_security_group_ids = var.security_rule_destination_application_security_group_ids
	destination_port_range                     = var.security_rule_destination_port_range
	destination_port_ranges                    = var.security_rule_destination_port_ranges
	direction                                  = var.security_rule_direction
	priority                                   = var.security_rule_priority
	protocol                                   = var.security_rule_protocol
	source_address_prefix                      = var.security_rule_source_address_prefix
	source_address_prefixes                    = var.security_rule_source_address_prefixes
	source_application_security_group_ids      = var.security_rule_source_application_security_group_ids
	source_port_range                          = var.security_rule_source_port_range
    source_port_ranges                         = var.security_rule_source_port_ranges
}

output "nsr_id" {
    value = azurerm_network_security_rule.example.id
}