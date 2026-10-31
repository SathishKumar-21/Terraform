module "platform" {
  source = "../../../modules/platform"

  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  acr_name            = var.acr_name
  acr_sku             = var.acr_sku
  tags                = local.common_tags
}
