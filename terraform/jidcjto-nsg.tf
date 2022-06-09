#================================================================================
#
# ZTADEV
# Network Security
#
#================================================================================
#
# NETWORK SECURITY GROUPS, RULES, and ASSOCIATIONS
#
# nsg01
module "jtodev_eastus2_dev_prod_subnet_nsg" {
	source            = "github.com/carnells/tfaz-nsg"
	#to_provision     = local.provision_nsg01
	rg_location       = module.jtodev_eastus2_dev_rg.rg_location
	rg_name           = module.jtodev_eastus2_dev_rg.rg_name
	nsg_name          = "jtodev_eastus2_dev_prod_subnet_nsg"

}

	# nsg01_outputs
	output "jtodev_eastus2_dev_prod_subnet_nsg_id" {
		value = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_id
	}
	output "jtodev_eastus2_dev_prod_subnet_nsg_name" {
		value = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name
	}

	# nsgassoc
	resource "azurerm_subnet_network_security_group_association" "jtodev_eastus2_dev_prod_subnet_nsgassoc" {
		subnet_id = module.jtodev_eastus2_dev_prod_subnet.subnet_id
		network_security_group_id = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_id
	}



#--------------------------------------------------------------------------------

	# nsr01-00
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_allow_icmp" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-00
		nsr_name = "Allow_ICMP"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow ICMP"
		security_rule_destination_address_prefix = "*"
		#security_rule_destination_address_prefixes = []
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "*"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 100
		security_rule_protocol = "ICMP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-00_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_allow_icmp_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_allow_icmp.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-01
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_3389" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-01
		nsr_name = "Port_3389"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP3389"
		security_rule_destination_address_prefix = "*"
		#security_rule_destination_address_prefixes = []
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "3389"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 101
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-01_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_3389_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_3389.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-02
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_443" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-02
		nsr_name = "Port_443"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP443"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.20",
			"192.168.200.23",
			"192.168.200.24"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "443"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 102
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		#security_rule_source_address_prefixes = [
		#	"144.129.196.130"
		#]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-02_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_443_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_443.nsr_id
		}



#--------------------------------------------------------------------------------

/*	# nsr01-03
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_80" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-03
		nsr_name = "Port_80"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP80"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.25"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "80"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 103
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-03_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_80_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_80.nsr_id
		}


#--------------------------------------------------------------------------------

	# nsr01-04
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_58080" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-04
		nsr_name = "Port_58080"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP58080"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.22",
			"192.168.200.40",
			"192.168.200.41",
			"192.168.200.42",
			"192.168.200.43"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "58080"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 104
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-04_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_58080_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_58080.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-05
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_1433" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-05
		nsr_name = "Port_1433"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP1433"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.20"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "1433"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 105
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-05_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_1433_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_1433.nsr_id
		}
*/


#--------------------------------------------------------------------------------

	# nsr01-06
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_22" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-06
		nsr_name = "Port_22"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP22"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.6",
			"192.168.200.7",
			"192.168.200.25",
			"192.168.200.30",
			"192.168.200.40",
			"192.168.200.41",
			"192.168.200.42",
			"192.168.200.43"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "22"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 106
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-06_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_22_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_22.nsr_id
		}



#--------------------------------------------------------------------------------

/*	# nsr01-07
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_3306" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-07
		nsr_name = "Port_3306"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP3306"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.25"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "3306"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 107
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-07_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_3306_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_3306.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-08
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8080" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-08
		nsr_name = "Port_8080"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP8080"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.22",
			"192.168.200.25",
			"192.168.200.30",
			"192.168.200.40",
			"192.168.200.41",
			"192.168.200.42",
			"192.168.200.43"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "8080"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 108
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		/*security_rule_source_address_prefixes = [
			"144.129.196.130"
		]*//*
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-08_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8080_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8080.nsr_id
		}



#--------------------------------------------------------------------------------

# nsr01-09
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8081" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-09
		nsr_name = "Port_8081"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP8081"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.22",
			"192.168.200.25"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "8081"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 109
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-09_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8081_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8081.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-10
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8443" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-10
		nsr_name = "Port_8443"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP8443"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.20"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "8443"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 110
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-10_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8443_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_8443.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-11
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_389" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-11
		nsr_name = "Port_389"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP389"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.11",
			"192.168.200.12"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "389"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 111
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-11_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_389_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_389.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr01-12
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_25" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-12
		nsr_name = "Port_25"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP25"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.24"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "25"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 112
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		#security_rule_source_address_prefixes = [
		#	"144.129.196.130"
		#]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-12_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_25_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_25.nsr_id
		}
*/


#--------------------------------------------------------------------------------

	# nsr01-13
	module "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_53" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-12
		nsr_name = "Port_53"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_prod_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP/UDP53"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.11",
			"192.168.200.12"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "53"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 113
		security_rule_protocol = "*"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"192.168.10.11",
			"192.168.58.71",
			"192.168.58.72"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr01-13_outputs
		output "jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_53_id" {
			value = module.jtodev_eastus2_dev_prod_subnet_nsg_nsr_port_53.nsr_id
		}



#--------------------------------------------------------------------------------

# nsg02
module "jtodev_eastus2_dev_edge_subnet_nsg" {
	source            = "github.com/carnells/tfaz-nsg"
	#to_provision     = local.provision_nsg02
	rg_location       = module.jtodev_eastus2_dev_rg.rg_location
	rg_name           = module.jtodev_eastus2_dev_rg.rg_name
	nsg_name          = "jtodev_eastus2_dev_edge_subnet_nsg"

}

	# nsg02_outputs
	output "jtodev_eastus2_dev_edge_subnet_nsg_id" {
		value = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_id
	}
	output "jtodev_eastus2_dev_edge_subnet_nsg_name" {
		value = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name
	}

	# nsgassoc
	resource "azurerm_subnet_network_security_group_association" "jtodev_eastus2_dev_edge_subnet_nsgassoc" {
		subnet_id = module.jtodev_eastus2_dev_edge_subnet.subnet_id
		network_security_group_id = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_id
	}



#--------------------------------------------------------------------------------

	# nsr02-00
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_allow_icmp" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-00
		nsr_name = "Allow_ICMP"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow ICMP"
		security_rule_destination_address_prefix = "*"
		#security_rule_destination_address_prefixes = []
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "*"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 100
		security_rule_protocol = "ICMP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-00_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_allow_icmp_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_allow_icmp.nsr_id
		}


#--------------------------------------------------------------------------------

/*
	# nsr02-01
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_3389" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-01
		nsr_name = "Port_3389"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP3389"
		security_rule_destination_address_prefix = "*"
		#security_rule_destination_address_prefixes = []
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "3389"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 101
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-01_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_3389_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_3389.nsr_id
		}
*/


#--------------------------------------------------------------------------------

	# nsr02-02
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_443" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-02
		nsr_name = "Port_443"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP443"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.70",
			"192.168.200.71",
			"192.168.200.72"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "443"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 102
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		#security_rule_source_address_prefixes = [
		#	"144.129.196.130"
		#]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-02_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_443_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_443.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr02-03
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_80" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-03
		nsr_name = "Port_80"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP80"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.70",
			"192.168.200.71",
			"192.168.200.72"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "80"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 103
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		#security_rule_source_address_prefixes = [
		#	"144.129.196.130"
		#]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-03_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_80_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_80.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr02-04
/*	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_58080" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-04
		nsr_name = "Port_58080"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP58080"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.22",
			"192.168.200.40",
			"192.168.200.41",
			"192.168.200.42",
			"192.168.200.43"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "58080"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 104
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-04_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_58080_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_58080.nsr_id
		}



#--------------------------------------------------------------------------------

	# nsr02-05
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_1433" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-05
		nsr_name = "Port_1433"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP1433"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.20"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "1433"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 105
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-05_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_1433_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_1433.nsr_id
		}
*/


#--------------------------------------------------------------------------------

	# nsr02-06
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_22" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-06
		nsr_name = "Port_22"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP22"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.70",
			"192.168.200.71",
			"192.168.200.72"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "22"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 106
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-06_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_22_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_22.nsr_id
		}


#--------------------------------------------------------------------------------

/*
	# nsr02-07
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_3306" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-07
		nsr_name = "Port_3306"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP3306"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.25"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "3306"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 107
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-07_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_3306_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_3306.nsr_id
		}

	# nsr02-08
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8080" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-08
		nsr_name = "Port_8080"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP8080"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.22",
			"192.168.200.25",
			"192.168.200.30",
			"192.168.200.40",
			"192.168.200.41",
			"192.168.200.42",
			"192.168.200.43"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "8080"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 108
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		/*security_rule_source_address_prefixes = [
			"144.129.196.130"
		]*/
/*		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-08_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8080_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8080.nsr_id
		}



#--------------------------------------------------------------------------------

# nsr02-09
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8081" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-09
		nsr_name = "Port_8081"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP8081"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.22",
			"192.168.200.25"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "8081"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 109
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-09_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8081_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8081.nsr_id
		}
*/


#--------------------------------------------------------------------------------

/*	# nsr02-10
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8443" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-10
		nsr_name = "Port_8443"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP8443"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.70",
			"192.168.200.71",
			"192.168.200.72"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "8443"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 110
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-10_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8443_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_8443.nsr_id
		}
*/


#--------------------------------------------------------------------------------

/*
	# nsr02-11
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_389" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-11
		nsr_name = "Port_389"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP389"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.11"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "389"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 111
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = "*"
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-11_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_389_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_389.nsr_id
		}


#--------------------------------------------------------------------------------

	# nsr02-12
	module "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_25" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr02-12
		nsr_name = "Port_25"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_edge_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP25"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.24"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "25"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 112
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		#security_rule_source_address_prefixes = [
		#	"144.129.196.130"
		#]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr02-12_outputs
		output "jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_25_id" {
			value = module.jtodev_eastus2_dev_edge_subnet_nsg_nsr_port_25.nsr_id
		}
*/

#--------------------------------------------------------------------------------


# nsg03
module "jtodev_eastus2_dev_web_subnet_nsg" {
	source            = "github.com/carnells/tfaz-nsg"
	#to_provision     = local.provision_nsg03
	rg_location       = module.jtodev_eastus2_dev_rg.rg_location
	rg_name           = module.jtodev_eastus2_dev_rg.rg_name
	nsg_name          = "jtodev_eastus2_dev_web_subnet_nsg"

}

	# nsg03_outputs
	output "jtodev_eastus2_dev_web_subnet_nsg_id" {
		value = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_id
	}
	output "jtodev_eastus2_dev_web_subnet_nsg_name" {
		value = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_name
	}

	# nsgassoc
	resource "azurerm_subnet_network_security_group_association" "jtodev_eastus2_dev_web_subnet_nsgassoc" {
		subnet_id = module.jtodev_eastus2_dev_web_subnet.subnet_id
		network_security_group_id = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_id
	}

	# nsr03-00
	module "jtodev_eastus2_dev_web_subnet_nsg_nsr_allow_icmp" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-00
		nsr_name = "Allow_ICMP"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow ICMP"
		security_rule_destination_address_prefix = "*"
		#security_rule_destination_address_prefixes = []
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "*"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 100
		security_rule_protocol = "ICMP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr03-00_outputs
		output "jtodev_eastus2_dev_web_subnet_nsg_nsr_allow_icmp_id" {
			value = module.jtodev_eastus2_dev_web_subnet_nsg_nsr_allow_icmp.nsr_id
		}

	# nsr03-01
	module "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_3389" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-01
		nsr_name = "Port_3389"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP3389"
		security_rule_destination_address_prefix = "*"
		#security_rule_destination_address_prefixes = []
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "3389"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 101
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr03-01_outputs
		output "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_3389_id" {
			value = module.jtodev_eastus2_dev_web_subnet_nsg_nsr_port_3389.nsr_id
		}

	# nsr03-02
	module "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_443" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-02
		nsr_name = "Port_443"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP443"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.41",
			"192.168.200.42"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "443"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 102
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		#security_rule_source_address_prefixes = [
		#	"144.129.196.130"
		#]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr03-02_outputs
		output "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_443_id" {
			value = module.jtodev_eastus2_dev_web_subnet_nsg_nsr_port_443.nsr_id
		}

	# nsr03-03
	module "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_22" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr01-06
		nsr_name = "Port_22"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP22"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.41",
			"192.168.200.42"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "22"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 106
		security_rule_protocol = "TCP"
		#security_rule_source_address_prefix = ""
		security_rule_source_address_prefixes = [
			"144.129.196.130"
		]
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr03-03_outputs
		output "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_22_id" {
			value = module.jtodev_eastus2_dev_web_subnet_nsg_nsr_port_22.nsr_id
		}

#--------------------------------------------------------------------------------

	# nsr03-04
	module "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_80" {
		source            = "github.com/carnells/tfaz-nsr"
		#to_provision     = local.provision_nsr03-04
		nsr_name = "Port_80"
		rg_name = module.jtodev_eastus2_dev_rg.rg_name
		network_security_group_name = module.jtodev_eastus2_dev_web_subnet_nsg.nsg_name

		# security rule
		security_rule_access = "Allow"
		security_rule_description = "Allow TCP80"
		#security_rule_destination_address_prefix = ""
		security_rule_destination_address_prefixes = [
			"192.168.200.41",
			"192.168.200.42"
		]
		security_rule_destination_application_security_group_ids = []
		security_rule_destination_port_range = "80"
		#security_rule_destination_port_ranges = []
		security_rule_direction = "Inbound"
		security_rule_priority = 103
		security_rule_protocol = "TCP"
		security_rule_source_address_prefix = "*"
		/*security_rule_source_address_prefixes = [
			"144.129.196.130"
		]*/
		security_rule_source_application_security_group_ids = []
		security_rule_source_port_range = "*"
		#security_rule_source_port_ranges = []
	}

		# nsr03-04_outputs
		output "jtodev_eastus2_dev_web_subnet_nsg_nsr_port_80_id" {
			value = module.jtodev_eastus2_dev_web_subnet_nsg_nsr_port_80.nsr_id
		}
