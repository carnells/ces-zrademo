#================================================================================
#
# LOGANALYTICSWRKSPC.TF

resource "azurerm_log_analytics_workspace" "example" {
  #count = var.to_provision == true ? 1 : 0
  location                          = var.rg_location
  resource_group_name               = var.rg_name
  tags                              = var.rg_tags
  name                              = var.loganalyticswrkspc_name
	sku                               = var.loganalyticswrkspc_sku
  retention_in_days                 = var.loganalyticswrkspc_retention_in_days
  daily_quota_gb                    = var.loganalyticswrkspc_daily_quota_gb
  internet_ingestion_enabled        = var.loganalyticswrkspc_internet_ingestion_enabled
  internet_query_enabled            = var.loganalyticswrkspc_internet_query_enabled
  reservation_capcity_in_gb_per_day = var.loganalyticswrkspc_reservation_capcity_in_gb_per_day
}

output "loganalyticswrkspc_id" {
  value = azurerm_log_analytics_workspace.example.id
}
output "loganalyticswrkspc_name" {
  value = azurerm_log_analytics_workspace.example.name
}
output "loganalyticswrkspc_primary_shared_key" {
  value = azurerm_log_analytics_workspace.example.primary_shared_key
}
output "loganalyticswrkspc_secondary_shared_key" {
  value = azurerm_log_analytics_workspace.example.secondary_shared_key
}
output "loganalyticswrkspc_workspace_id" {
  value = azurerm_log_analytics_workspace.example.workspace_id
}
