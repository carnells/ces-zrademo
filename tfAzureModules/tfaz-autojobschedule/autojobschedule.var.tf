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
variable "autojobschedule_autoaccount_name" {
    type = string
	default = "autojobschedule_autoaccount_name"
}
variable "autojobschedule_schedule_name" {
    type = string
	default = "autojobschedule_schedule_name"
}
variable "autojobschedule_runbook_name" {
    type = string
	default = "autojobschedule_runbook_name"
}
variable "autojobschedule_parameters" {
    type = map
}
