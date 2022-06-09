#================================================================================
#
# AUTOJOBSCEDULE.TF

resource "azurerm_automation_schedule" "example" {
    resource_group_name     = var.rg_name
    automation_account_name = var.autoschedule_autoaccount_name
    name                    = var.autoschedule_name
    frequency               = var.autoschedule_frequency
    interval                = var.autoschedule_interval
    timezone                = var.autoschedule_timezone
    start_time              = var.autoschedule_start_time
    expiry_time             = var.autoschedule_expiry_time
    description             = var.autoschedule_description
    week_days               = var.autoschedule_week_days
    month_days              = var.autoschedule_month_days
    #monthly_occurrence      = var.autoschedule_monthly_occurrence
}

output "autoschedule_id" {
    value = azurerm_automation_schedule.example.id
}
output "autoschedule_name" {
    value = azurerm_automation_schedule.example.name
}
