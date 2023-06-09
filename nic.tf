resource "azurerm_network_interface" "nic_001" {
  name                = var.nic_001
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_project001.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snet001.id
    private_ip_address_allocation = "Dynamic"
  }
}
