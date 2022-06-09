#================================================================================
#
# LBPROBE.TF

resource "azurerm_lb_probe" "example" {
  resource_group_name = var.rg_name
  loadbalancer_id     = var.lbprobe_lb_id
  name                = var.lbprobe_name
  protocol            = var.lbprobe_protocol
  port                = var.lbprobe_port
  request_path        = var.lbprobe_request_path
  interval_in_seconds = var.lbprobe_interval_in_seconds
}

output "lbprobe_id" {
    value = azurerm_lb_probe.example.id
}
output "lbprobe_name" {
    value = azurerm_lb_probe.example.name
}
