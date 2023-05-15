#Configure resources output
output "strg_id_out" {
  value = azurerm_storage_account.str_strg001.id
}

output "subnet_id" {
  value = azurerm_subnet.snet002.id
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet_001.id
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg_001.id

}

#output "vm_ip" {
#  value = azurerm_windows_virtual_machine.vm_001.private_ip_addresses
#}