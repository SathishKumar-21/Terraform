resource "azurerm_resource_group" "main" {
  name     = "${local.name_prefix}-rg"
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source = "../../../modules/network"

  name_prefix         = local.name_prefix
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = var.address_space
  app_subnet_prefix   = var.app_subnet_prefix
  ssh_allowed_cidr    = var.ssh_allowed_cidr
  tags                = local.common_tags
}
