#================================================================================
#
# LBBACKENDADDRESSPOOL.TF

resource "azurerm_lb_backend_address_pool" "example" {
    #resource_group_name = var.rg_name
    loadbalancer_id     = var.lbbackendaddresspool_lb_id
    name                = var.lbbackendaddresspool_name
}

output "lbbackendaddresspool_id" {
    value = azurerm_lb_backend_address_pool.example.id
}
output "lbbackendaddresspool_name" {
    value = azurerm_lb_backend_address_pool.example.name
}
output "lbbackendaddresspool_backend_ip_configurations" {
    value = azurerm_lb_backend_address_pool.example.backend_ip_configurations
}
output "lbbackendaddresspool_load_balancing_rules" {
    value = azurerm_lb_backend_address_pool.example.load_balancing_rules
}
/*output "lbbackendaddresspool_outbound_rules" {
    value = azurerm_lb_backend_address_pool.example.outbound_rules
}*/
