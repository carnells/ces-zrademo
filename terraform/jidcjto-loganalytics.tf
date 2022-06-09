#================================================================================
#
# ZTADEV
# Log Analytics
#
#================================================================================
#
# loganalyticswrkspc
module "jtodev_eastus_dev_loganalyticswrkspc" {
	source = "github.com/carnells/tfaz-loganalyticswrkspc"
	#to_provision = local.provision_loganalyticswrkspc
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

	loganalyticswrkspc_name = "jtodev-eastus-dev-loganalyticswrkspc"
	loganalyticswrkspc_sku                               = "PerGB2018"
	loganalyticswrkspc_retention_in_days                 = 30
	loganalyticswrkspc_daily_quota_gb                    = null
	loganalyticswrkspc_internet_ingestion_enabled        = true
	loganalyticswrkspc_internet_query_enabled            = true
	loganalyticswrkspc_reservation_capcity_in_gb_per_day = null
}

#loganalyticswrkspc_outputs
output "jtodev_eastus_dev_loganalyticswrkspc_id" {
	value = module.jtodev_eastus_dev_loganalyticswrkspc.loganalyticswrkspc_id
}
output "jtodev_eastus_dev_loganalyticswrkspc_name" {
	value = module.jtodev_eastus_dev_loganalyticswrkspc.loganalyticswrkspc_name
}
output "jtodev_eastus_dev_loganalyticswrkspc_primary_shared_key" {
    value = module.jtodev_eastus_dev_loganalyticswrkspc.loganalyticswrkspc_primary_shared_key
	sensitive = true
}
output "jtodev_eastus_dev_loganalyticswrkspc_secondary_shared_key" {
    value = module.jtodev_eastus_dev_loganalyticswrkspc.loganalyticswrkspc_secondary_shared_key
	sensitive = true
}
output "jtodev_eastus_dev_loganalyticswrkspc_workspace_id" {
    value = module.jtodev_eastus_dev_loganalyticswrkspc.loganalyticswrkspc_workspace_id
}
