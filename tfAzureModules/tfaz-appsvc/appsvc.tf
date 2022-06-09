resource "azurerm_app_service" "example" {
  name                = var.appsvc_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  app_service_plan_id = var.appsvcplan_id

  site_config {
    always_on                   = var.site_config_always_on
    dotnet_framework_version    = var.site_config_dotnet_framework_version
    ftps_state                  = var.site_config_ftps_state
    http2_enabled               = var.site_config_http2_enabled
    #ip_restriction              = var.site_config_ip_restriction
    linux_fx_version            = var.site_config_linux_fx_version
    windows_fx_version          = var.site_config_windows_fx_version
    local_mysql_enabled         = var.site_config_local_mysql_enabled
    managed_pipeline_mode       = var.site_config_managed_pipeline_mode
    min_tls_version             = var.site_config_min_tls_version
    number_of_workers           = var.site_config_number_of_workers
    remote_debugging_enabled    = var.site_config_remote_debugging_enabled
    remote_debugging_version    = var.site_config_remote_debugging_version
    #scm_ip_restriction          = var.site_config_scm_ip_restriction
    scm_type                    = var.site_config_scm_type
    #scm_use_main_ip_restriction = var.site_config_scm_use_main_ip_restriction
    websockets_enabled          = var.site_config_websockets_enabled
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  connection_string {
    name  = var.connection_string_name
    type  = var.connection_string_type
    value = var.connection_string_value
  }
}

output "appsvc_id" {
    value = azurerm_app_service.example.id
}
output "appsvc_name" {
    value = azurerm_app_service.example.name
}
output "appsvc_default_site_hostname" {
  value = "https://${azurerm_app_service.example.default_site_hostname}"
}
output "appsvc_custom_domain_verification_id" {
    value = azurerm_app_service.example.custom_domain_verification_id
}
output "appsvc_source_control" {
    value = azurerm_app_service.example.source_control
}
output "appsvc_site_credential" {
    value = azurerm_app_service.example.site_credential
}
output "appsvc_identity" {
    value = azurerm_app_service.example.identity
}
