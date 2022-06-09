#================================================================================
#
# LOGANALYTICSWRKSPC.VAR.TF

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
variable "rg_tags" {
    type = map
}
variable "loganalyticswrkspc_name" {
    type = string
	default = "loganalyticswrkspc_name"
}
variable "loganalyticswrkspc_sku" {
	type = string
	default = "PerGB2018"
}
variable "loganalyticswrkspc_retention_in_days" {
	type = number
	default = null
}
variable "loganalyticswrkspc_daily_quota_gb" {
	type = number
	default = null
}
variable "loganalyticswrkspc_internet_ingestion_enabled" {
	type = bool
	default = true
}
variable "loganalyticswrkspc_internet_query_enabled" {
	type = bool
	default = true
}
variable "loganalyticswrkspc_reservation_capcity_in_gb_per_day" {
	type = number
	default = null
}
