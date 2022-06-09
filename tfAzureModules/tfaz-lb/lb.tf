resource "azurerm_lb" "example" {
  name                = var.lb_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku                 = var.lb_sku

  frontend_ip_configuration {
    name                          = var.lb_frontend_ip_configuration_name
    subnet_id                     = var.lb_frontend_ip_configuration_subnet_id
    private_ip_address            = var.lb_frontend_ip_configuration_private_ip_address
    private_ip_address_allocation = var.lb_frontend_ip_configuration_private_ip_address_allocation
    private_ip_address_version    = var.lb_frontend_ip_configuration_private_ip_address_version
    public_ip_address_id          = var.lb_frontend_ip_configuration_public_ip_address_id
  }
}

output "lb_id" {
    value = azurerm_lb.example.id
}
output "lb_name" {
    value = azurerm_lb.example.name
}
output "lb_frontend_ip_configuration_name" {
    value = var.lb_frontend_ip_configuration_name
}
output "lb_frontend_ip_configuration" {
    value = azurerm_lb.example.frontend_ip_configuration
}
output "lb_frontend_private_ip_address" {
    value = azurerm_lb.example.private_ip_address
}
