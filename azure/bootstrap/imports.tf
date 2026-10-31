# These were first created by hand with the az CLI on 2026-10-28.
# Import blocks adopt them into Terraform state instead of recreating them.
# Safe to delete this file after the first successful apply.
import {
  to = azurerm_resource_group.tfstate
  id = "${data.azurerm_subscription.current.id}/resourceGroups/${var.resource_group_name}"
}

import {
  to = azurerm_storage_account.tfstate
  id = "${data.azurerm_subscription.current.id}/resourceGroups/${var.resource_group_name}/providers/Microsoft.Storage/storageAccounts/${var.storage_account_name}"
}

import {
  to = azurerm_storage_container.tfstate
  id = "${data.azurerm_subscription.current.id}/resourceGroups/${var.resource_group_name}/providers/Microsoft.Storage/storageAccounts/${var.storage_account_name}/blobServices/default/containers/tfstate"
}
