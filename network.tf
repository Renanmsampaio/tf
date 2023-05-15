resource "azurerm_virtual_network" "vnet_001" {
  name                = var.vnet_001
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_project001.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags                = local.common_tags
}