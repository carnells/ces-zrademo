#================================================================================
#
# AUTOACCOUNT.TF

resource "azurerm_automation_account" "example" {
    name                = var.autoaccount_name
    resource_group_name = var.rg_name
    location            = var.rg_location
    tags                = var.rg_tags
    sku_name            = var.autoaccount_sku_name
}

output "autoaccount_id" {
    value = azurerm_automation_account.example.id
}
output "autoaccount_name" {
    value = azurerm_automation_account.example.name
}
output "autoaccount_sku_name" {
    value = azurerm_automation_account.example.sku_name
}
output "autoaccount_dsc_server_endpoint" {
    value = azurerm_automation_account.example.dsc_server_endpoint
}
output "autoaccount_dsc_primary_access_key" {
    value = azurerm_automation_account.example.dsc_primary_access_key
}
output "autoaccount_dsc_secondary_access_key" {
    value = azurerm_automation_account.example.dsc_secondary_access_key
}
