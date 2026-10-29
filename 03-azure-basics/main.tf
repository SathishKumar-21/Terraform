resource "azurerm_resource_group" "main" {
  name     = "${var.project}-${var.environment}-rg"
  location = var.location

  tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    owner       = "sathish"
  }
}
