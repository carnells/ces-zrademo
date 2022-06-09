#================================================================================
#
# LBRULE.TF

resource "azurerm_lb_rule" "example" {
  resource_group_name            = var.rg_name
  loadbalancer_id                = var.lb_id
  name                           = var.lbrule_name
  protocol                       = var.lbrule_protocol
  frontend_port                  = var.lbrule_frontend_port
  backend_port                   = var.lbrule_backend_port
  frontend_ip_configuration_name = var.lbrule_frontend_ip_configuration_name
  backend_address_pool_id        = var.lbrule_backend_address_pool_id
  probe_id                       = var.lbrule_probe_id
}

output "lbrule_id" {
  value = azurerm_lb_rule.example.id
}
output "lbrule_name" {
  value = azurerm_lb_rule.example.name
}
