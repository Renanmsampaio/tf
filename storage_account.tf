#Configure Storage Account
resource "azurerm_storage_account" "str_strg001" {
  name                     = var.strg_name
  resource_group_name      = azurerm_resource_group.rg_rg001.name
  location                 = var.location
  account_tier             = var.strg_account_tier
  account_replication_type = var.srtg_account_replication_type
  tags                     = local.common_tags

  #Configure Versioning of storage accout
  blob_properties {
    versioning_enabled = true
  }
}

#Configure a container
resource "azurerm_storage_container" "blob_container" {
  name                  = var.strg_blob_name
  storage_account_name  = azurerm_storage_account.str_strg001.name
  container_access_type = var.strg_blob_access_type
}
