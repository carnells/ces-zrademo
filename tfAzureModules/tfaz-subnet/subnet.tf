#================================================================================
#
# SUBNET.TF

resource "azurerm_subnet" "example" {
  #count = var.to_provision == true ? 1 : 0
  name                 = var.subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_prefixes
}

output "subnet_id" {
  value = azurerm_subnet.example.id
}
output "subnet_name" {
  value = azurerm_subnet.example.name
}