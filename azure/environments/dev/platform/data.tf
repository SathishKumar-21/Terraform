# Owned by environments/dev/network — read here, never modified.
data "azurerm_resource_group" "main" {
  name = "${local.name_prefix}-rg"
}
