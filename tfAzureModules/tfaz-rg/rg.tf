#================================================================================
#
# RG.TF

resource "azurerm_resource_group" "example" {
	#count = var.to_provision == true ? 1 : 0
	name = var.rg_name
	location = var.rg_location
	tags = var.rg_tags
}

output "rg_name" {
	value = azurerm_resource_group.example.name
}
output "rg_location" {
	value = azurerm_resource_group.example.location
}
output "rg_tags" {
	value = azurerm_resource_group.example.tags
}