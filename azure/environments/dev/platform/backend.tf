terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatesathish24"
    container_name       = "tfstate"
    key                  = "dev/platform.tfstate"
    use_azuread_auth     = true
  }
}
