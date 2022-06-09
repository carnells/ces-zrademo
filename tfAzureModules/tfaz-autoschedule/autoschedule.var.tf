#================================================================================
#
# AUTOJOBSCEDULE.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "autoschedule_autoaccount_name" {
    type = string
	default = "autoschedule_autoaccount_name"
}
variable "autoschedule_name" {
    type = string
	default = "autoschedule_name"
}
variable "autoschedule_frequency" {
    type = string
	default = "autoschedule_frequency"
}
variable "autoschedule_interval" {
    type = number
    default = 1
}
variable "autoschedule_timezone" {
    type = string
	default = "autoschedule_timezone"
}
variable "autoschedule_start_time" {
    type = string
	default = "autoschedule_start_time"
}
variable "autoschedule_expiry_time" {
    type = string
	default = null
}
variable "autoschedule_description" {
    type = string
	default = "autoschedule_description"
}
variable "autoschedule_week_days" {
    type = list
}
variable "autoschedule_month_days" {
    type = list
}
/*variable "autoschedule_monthly_occurrence" {
    type = list
}*/
