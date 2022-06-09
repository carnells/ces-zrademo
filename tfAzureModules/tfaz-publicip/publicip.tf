#================================================================================
#
# PUBLICIP.TF

resource "azurerm_public_ip" "example" {
  #count = var.to_provision == true ? 1 : 0
  name                = var.publicip_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  allocation_method   = var.allocation_method
  sku                 = var.sku
  domain_name_label   = var.domain_name_label
}

output "publicip_id" {
    value = azurerm_public_ip.example.id
}
output "publicip_ip_address" {
    value = azurerm_public_ip.example.ip_address
}
output "publicip_name" {
    value = azurerm_public_ip.example.name
}
output "publicip_domain_name_label" {
    value = azurerm_public_ip.example.domain_name_label
}