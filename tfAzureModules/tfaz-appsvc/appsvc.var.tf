#================================================================================
#
# APPSVC.VAR.TF

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
    variable "appsvc_name" {
    type = string
    default = "appsvc_name"
}
variable "appsvcplan_id" {
    type = string
    default = "appsvcplan_id"
}
variable "site_config_always_on" {
    type = bool
    default = "false"
}
variable "site_config_dotnet_framework_version" {
    type = string
    default = null
}
variable "site_config_ftps_state" {
    type = string
    default = "FtpsOnly"
}
variable "site_config_http2_enabled" {
    type = bool
    default = true
}
/*variable "site_config_ip_restriction" {
    type = bool
    default = true
}*/
variable "site_config_linux_fx_version" {
    type = string
    default = null
}
variable "site_config_windows_fx_version" {
    type = string
    default = null
}
variable "site_config_local_mysql_enabled" {
    type = bool
    default = false
}
variable "site_config_managed_pipeline_mode" {
    type = string
    default = "Integrated"
}
variable "site_config_min_tls_version" {
    type = string
    default = "1.2"
}
variable "site_config_number_of_workers" {
    type = number
    default = 1
}
variable "site_config_remote_debugging_enabled" {
    type = bool
    default = false
}
variable "site_config_remote_debugging_version" {
    type = string
    default = null
}
/*variable "site_config_scm_ip_restriction" {
    type = string
    default = "LocalGit"
}*/
variable "site_config_scm_type" {
    type = string
    default = "LocalGit"
}
/*variable "site_config_scm_use_main_ip_restriction" {
    type = bool
    default = false
}*/
variable "site_config_websockets_enabled" {
    type = bool
    default = false
}
variable "connection_string_name" {
    type = string
    default = null
}
variable "connection_string_type" {
    type = string
    default = null
}
variable "connection_string_value" {
    type = string
    default = null
}
