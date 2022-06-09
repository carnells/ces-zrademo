resource "azurerm_app_service_plan" "example" {
  name                = var.appsvcplan_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  kind                = var.kind
  reserved            = var.reserved
  is_xenon            = var.is_xenon

  sku {
    tier = var.sku_tier
    size = var.sku_size
    #capacity = var.sku_capacity
  }
}

output "appsvcplan_id" {
    value = azurerm_app_service_plan.example.id
}
output "appsvcplan_name" {
    value = azurerm_app_service_plan.example.name
}
output "appsvcplan_kind" {
    value = azurerm_app_service_plan.example.kind
}
output "appsvcplan_maximum_number_of_workers" {
    value = azurerm_app_service_plan.example.maximum_number_of_workers
}
