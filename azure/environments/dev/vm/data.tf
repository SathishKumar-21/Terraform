# Owned by environments/dev/network — read here, never modified.
data "azurerm_resource_group" "main" {
  name = "${local.name_prefix}-rg"
}

data "azurerm_subnet" "app" {
  name                 = "app-subnet"
  virtual_network_name = "${local.name_prefix}-vnet"
  resource_group_name  = data.azurerm_resource_group.main.name
}
