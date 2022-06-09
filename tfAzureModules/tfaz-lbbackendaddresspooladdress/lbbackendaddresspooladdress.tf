#================================================================================
#
# LBBACKENDADDRESSPOOLADDRESS.TF

resource "azurerm_lb_backend_address_pool_address" "example" {
  name                    = var.lb_backendaddresspooladdress_name
  backend_address_pool_id = var.lb_backendaddresspooladdress_backend_address_pool_id
  virtual_network_id      = var.lb_backendaddresspooladdress_virtual_network_id
  ip_address              = var.lb_backendaddresspooladdress_ip_address
}

output "lbbackendaddresspooladdress_id" {
    value = azurerm_lb_backend_address_pool_address.example.id
}
output "lbbackendaddresspooladdress_name" {
    value = azurerm_lb_backend_address_pool_address.example.name
}
