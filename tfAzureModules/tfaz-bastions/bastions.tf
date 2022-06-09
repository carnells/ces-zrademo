#================================================================================
#
# BASTIONS.TF

resource "azurerm_bastion_host" "example" {
  name                        = var.bastions_name
  location                    = var.rg_location
  resource_group_name         = var.rg_name
	tags                        = var.rg_tags

  ip_configuration {
    name                 = var.ip_configuration_name
    subnet_id            = var.ip_configuration_subnet_id
    public_ip_address_id = var.ip_configuration_public_ip_address_id
  }
}

output "bastions_id" {
  value = azurerm_bastion_host.example.id
}
output "bastions_name" {
  value = azurerm_bastion_host.example.name
}
output "bastions_dns_name" {
  value = azurerm_bastion_host.example.dns_name
}