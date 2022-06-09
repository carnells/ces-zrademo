#================================================================================
#
# ZTADEV
# Virtual Networks
#

# vnet01
module "jtodev_eastus2_dev_vnet" {
	source = "github.com/carnells/tfaz-vnet"
	#to_provision = local.provision_vnet01
	rg_location = module.jtodev_eastus2_dev_rg.rg_location
	rg_name = module.jtodev_eastus2_dev_rg.rg_name
	rg_tags = {
		"ManagementGroup" = "MPG A&E EastUS2",
		"Environment" = "JTODev",
		"AutomatedBy" = "Terraform",
		"Note1" = "Do not manually change",
		"POCName" = "carnells@mindpointgroup.com",
		"POCPhone" = "810.407.0773",
		"Project" = "Zero Trust Demo"
	}

	vnet_name = "jtodev_eastus2_dev_vnet"
	vnet_address_space = [
		"192.168.200.0/27",
		"192.168.200.32/27",
		"192.168.200.64/27",
		"192.168.200.96/27",
		"192.168.200.128/27",
		"192.168.200.160/27",
		"192.168.200.192/27",
		"192.168.200.224/28",
		"192.168.200.248/29"
	]
	vnet_dns_servers = [
		"192.168.200.11",
		"192.168.200.12"
	]
}

#vnet01_outputs
output "jtodev_eastus2_dev_vnet_id" {
	value = module.jtodev_eastus2_dev_vnet.vnet_id
}
output "jtodev_eastus2_dev_vnet_name" {
	value = module.jtodev_eastus2_dev_vnet.vnet_name
}

# vnet02
module "jtodev_eastus_dev_vnet" {
	source = "github.com/carnells/tfaz-vnet"
	#to_provision = local.provision_vnet02
	rg_location = module.jtodev_eastus_dev_rg.rg_location
	rg_name = module.jtodev_eastus_dev_rg.rg_name
	rg_tags = {
		"ManagementGroup" = "MPG A&E EastUS",
		"Environment" = "JTODev",
		"AutomatedBy" = "Terraform",
		"Note1" = "Do not manually change",
		"POCName" = "carnells@mindpointgroup.com",
		"POCPhone" = "810.407.0773",
		"Project" = "Zero Trust Demo"
	}

	vnet_name = "jtodev_eastus_dev_vnet"
	vnet_address_space = [
		"192.168.202.0/27",
		"192.168.202.32/27",
		"192.168.202.64/27",
		"192.168.202.96/27",
		"192.168.202.128/27",
		"192.168.202.160/27",
		"192.168.202.192/27",
		"192.168.202.224/28",
		"192.168.202.248/29"
	]
	vnet_dns_servers = [
		"192.168.200.11",
		"192.168.200.12"
	]
}

#vnet02_outputs
output "jtodev_eastus_dev_vnet_id" {
	value = module.jtodev_eastus_dev_vnet.vnet_id
}
output "jtodev_eastus_dev_vnet_name" {
	value = module.jtodev_eastus_dev_vnet.vnet_name
}

# vnet03
module "jtodev_westus_dev_vnet" {
	source = "github.com/carnells/tfaz-vnet"
	#to_provision = local.provision_vnet02
	rg_location = module.jtodev_westus_dev_rg.rg_location
	rg_name = module.jtodev_westus_dev_rg.rg_name
	rg_tags = {
		"ManagementGroup" = "MPG A&E WestUS",
		"Environment" = "JTODev",
		"AutomatedBy" = "Terraform",
		"Note1" = "Do not manually change",
		"POCName" = "carnells@mindpointgroup.com",
		"POCPhone" = "810.407.0773",
		"Project" = "Zero Trust Demo"
	}

	vnet_name = "jtodev_westus_dev_vnet"
	vnet_address_space = [
		"192.168.204.0/27",
		"192.168.204.32/27",
		"192.168.204.64/27",
		"192.168.204.96/27",
		"192.168.204.128/27",
		"192.168.204.160/27",
		"192.168.204.192/27",
		"192.168.204.224/28",
		"192.168.204.248/29"
	]
	vnet_dns_servers = [
		"192.168.200.11",
		"192.168.200.12"
	]
}

#vnet03_outputs
output "jtodev_westus_dev_vnet_id" {
	value = module.jtodev_westus_dev_vnet.vnet_id
}
output "jtodev_westus_dev_vnet_name" {
	value = module.jtodev_westus_dev_vnet.vnet_name
}

# vnet04
module "jtodev_westus2_dev_vnet" {
	source = "github.com/carnells/tfaz-vnet"
	#to_provision = local.provision_vnet02
	rg_location = module.jtodev_westus2_dev_rg.rg_location
	rg_name = module.jtodev_westus2_dev_rg.rg_name
	rg_tags = {
		"ManagementGroup" = "MPG A&E WestUS2",
		"Environment" = "JTODev",
		"AutomatedBy" = "Terraform",
		"Note1" = "Do not manually change",
		"POCName" = "carnells@mindpointgroup.com",
		"POCPhone" = "810.407.0773",
		"Project" = "Zero Trust Demo"
	}

	vnet_name = "jtodev_westus2_dev_vnet"
	vnet_address_space = [
		"192.168.206.0/27",
		"192.168.206.32/27",
		"192.168.206.64/27",
		"192.168.206.96/27",
		"192.168.206.128/27",
		"192.168.206.160/27",
		"192.168.206.192/27",
		"192.168.206.224/28",
		"192.168.206.248/29"
	]
	vnet_dns_servers = [
		"192.168.200.11",
		"192.168.200.12"
	]
}

#vnet03_outputs
output "jtodev_westus2_dev_vnet_id" {
	value = module.jtodev_westus2_dev_vnet.vnet_id
}
output "jtodev_westus2_dev_vnet_name" {
	value = module.jtodev_westus2_dev_vnet.vnet_name
}

#peer01a
module "jtodev_eastus2_dev2eastus_dev_vnet_peer" {
	source = "github.com/carnells/tfaz-peer"
	#to_provision = local.provision_peer01
	rg_name = module.jtodev_eastus2_dev_rg.rg_name
	peer_name = "eastus2_dev2eastus_dev_peer"
	from_vnet_name = module.jtodev_eastus2_dev_vnet.vnet_name
	to_vnet_id = module.jtodev_eastus_dev_vnet.vnet_id
	peer_allow_virtual_network_access = true
	peer_allow_forwarded_traffic = true
	peer_allow_gateway_transit = false
}

#peer01b
module "jtodev_eastus_dev2eastus2_dev_vnet_peer" {
	source = "github.com/carnells/tfaz-peer"
	#to_provision = local.provision_peer01
	rg_name = module.jtodev_eastus_dev_rg.rg_name
	peer_name = "eastus_dev2eastus2_dev_peer"
	from_vnet_name =  module.jtodev_eastus_dev_vnet.vnet_name
	to_vnet_id = module.jtodev_eastus2_dev_vnet.vnet_id
	peer_allow_virtual_network_access = true
	peer_allow_forwarded_traffic = true
	peer_allow_gateway_transit = false
}

#peer2a
module "jtodev_eastus2_dev2westus_dev_vnet_peer" {
	source = "github.com/carnells/tfaz-peer"
	#to_provision = local.provision_peer02
	rg_name = module.jtodev_eastus2_dev_rg.rg_name
	peer_name = "eastus2_dev2westus_dev_peer"
	from_vnet_name = module.jtodev_eastus2_dev_vnet.vnet_name
	to_vnet_id = module.jtodev_westus_dev_vnet.vnet_id
	peer_allow_virtual_network_access = true
	peer_allow_forwarded_traffic = true
	peer_allow_gateway_transit = false
}

#peer2b
module "jtodev_westus_dev2eastus2_dev_vnet_peer" {
	source = "github.com/carnells/tfaz-peer"
	#to_provision = local.provision_peer02
	rg_name = module.jtodev_westus_dev_rg.rg_name
	peer_name = "westus_dev2eastus2_dev_peer"
	from_vnet_name =  module.jtodev_westus_dev_vnet.vnet_name
	to_vnet_id = module.jtodev_eastus2_dev_vnet.vnet_id
	peer_allow_virtual_network_access = true
	peer_allow_forwarded_traffic = true
	peer_allow_gateway_transit = false
}

#peer3a
module "jtodev_eastus2_dev2westus2_dev_vnet_peer" {
	source = "github.com/carnells/tfaz-peer"
	#to_provision = local.provision_peer02
	rg_name = module.jtodev_eastus2_dev_rg.rg_name
	peer_name = "eastus2_dev2westus2_dev_peer"
	from_vnet_name = module.jtodev_eastus2_dev_vnet.vnet_name
	to_vnet_id = module.jtodev_westus2_dev_vnet.vnet_id
	peer_allow_virtual_network_access = true
	peer_allow_forwarded_traffic = true
	peer_allow_gateway_transit = false
}

#peer3b
module "jtodev_westus2_dev2eastus2_dev_vnet_peer" {
	source = "github.com/carnells/tfaz-peer"
	#to_provision = local.provision_peer02
	rg_name = module.jtodev_westus2_dev_rg.rg_name
	peer_name = "westus2_dev2eastus2_dev_peer"
	from_vnet_name =  module.jtodev_westus2_dev_vnet.vnet_name
	to_vnet_id = module.jtodev_eastus2_dev_vnet.vnet_id
	peer_allow_virtual_network_access = true
	peer_allow_forwarded_traffic = true
	peer_allow_gateway_transit = false
}
