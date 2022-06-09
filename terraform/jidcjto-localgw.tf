#================================================================================
#
# LOCAL NETWORK GATEWAYS

# localgw01
module "jtodev_eastus2_dev_cotpa_localgw" {
	source = "github.com/carnells/tfaz-localgw"
	#to_provision = local.provision_localgw01
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

	localgw_name = "jtodev_eastus2_dev-cotpa_localgw"
	gateway_address = local.localgw01_gateway_address

	# ENTER NETWORK IDs OF LOCAL NET FOR ROUTING 
	address_space = ["192.168.210.0/23"]
		/*"192.168.8.0/24",
		"192.168.14.0/24",
		"192.168.10.11/32",
		"192.168.58.71/32",
		"192.168.58.72/32"*/
}

# localgw01_outputs
    output "jtodev_eastus2_dev_cotpa_localgw_id" {
        value = module.jtodev_eastus2_dev_cotpa_localgw.localgw_id
    }
    output "jtodev_eastus2_dev_cotpa_localgw_name" {
        value = module.jtodev_eastus2_dev_cotpa_localgw.localgw_name
    }
