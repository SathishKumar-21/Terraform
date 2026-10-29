terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatesathish24"
    container_name       = "tfstate"
    key                  = "flask-dev.tfstate" # the blob's file name; one per environment
    use_azuread_auth     = true                # use your Entra ID login, not the account key
  }
}
