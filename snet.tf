resource "azurerm_subnet" "snet001" {
  name                 = var.project001_snet_001
  resource_group_name  = azurerm_resource_group.rg_project001.name
  virtual_network_name = azurerm_virtual_network.vnet_001.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "snet002" {
  name                 = var.project001_snet_002
  resource_group_name  = azurerm_resource_group.rg_project001.name
  virtual_network_name = azurerm_virtual_network.vnet_001.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "nsg_assoc" {
  subnet_id                 = azurerm_subnet.snet002.id
  network_security_group_id = azurerm_network_security_group.nsg_001.id
}