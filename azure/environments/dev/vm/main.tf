module "vm" {
  source = "../../../modules/vm"

  name_prefix         = local.name_prefix
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  subnet_id           = data.azurerm_subnet.app.id
  vm_size             = var.vm_size
  ssh_public_key      = file(pathexpand(var.ssh_public_key_path))
  tags                = local.common_tags
}
