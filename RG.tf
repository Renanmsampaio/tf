#Configure Resource Group
resource "azurerm_resource_group" "rg_rg001" {
  name     = var.rg_name
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg_project001" {
  name     = var.rg_name_02
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_resource_group" "Production" {
  name     = "Production"
  location = var.location
  tags     = local.common_tags
}


