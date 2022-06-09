#================================================================================
#
# AUTOJOBSCEDULE.TF

resource "azurerm_automation_job_schedule" "example" {
    resource_group_name     = var.rg_name
    automation_account_name = var.autojobschedule_autoaccount_name
    schedule_name           = var.autojobschedule_schedule_name
    runbook_name            = var.autojobschedule_runbook_name
    parameters              = var.autojobschedule_parameters
}

output "autojobschedule_id" {
    value = azurerm_automation_job_schedule.example.id
}
output "autojobschedule_job_schedule_id" {
    value = azurerm_automation_job_schedule.example.job_schedule_id
}
output "autojobschedule_autoamation_account_name" {
    value = azurerm_automation_job_schedule.example.automation_account_name
}
output "autojobschedule_runbook_name" {
    value = azurerm_automation_job_schedule.example.runbook_name
}
