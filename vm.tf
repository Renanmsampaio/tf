resource "azurerm_windows_virtual_machine" "vm_001" {
  name                = var.vm_001
  resource_group_name = azurerm_resource_group.rg_project001.name
  location            = var.location
  size                = "Standard_D2_v2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.nic_001.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
