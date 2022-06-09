#================================================================================
#
# NSG.TF

resource "azurerm_network_security_group" "example" {
    name                = var.nsg_name
    location            = var.rg_location
    resource_group_name = var.rg_name

    /*security_rule {
        access                                     = var.security_rule_access
	    description                                = var.security_rule_description
	    destination_address_prefix                 = var.security_rule_destination_address_prefix
	    destination_address_prefixes               = var.security_rule_destination_address_prefixes
	    destination_application_security_group_ids = var.security_rule_destination_application_security_group_ids
	    destination_port_range                     = var.security_rule_destination_port_range
	    destination_port_ranges                    = var.security_rule_destination_port_ranges
	    direction                                  = var.security_rule_direction
	    name                                       = var.security_rule_name
	    priority                                   = var.security_rule_priority
	    protocol                                   = var.security_rule_protocol
	    source_address_prefix                      = var.security_rule_source_address_prefix
	    source_address_prefixes                    = var.security_rule_source_address_prefixes
	    source_application_security_group_ids      = var.security_rule_source_application_security_group_ids
	    source_port_range                          = var.security_rule_source_port_range
        source_port_ranges                         = var.security_rule_source_port_ranges
    }*/
}

output "nsg_id" {
    value = azurerm_network_security_group.example.id
}
output "nsg_name" {
	value = azurerm_network_security_group.example.name
}