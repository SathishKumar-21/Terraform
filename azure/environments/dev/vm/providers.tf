terraform {
  required_version = ">= 1.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Subscription comes from ARM_SUBSCRIPTION_ID, so no IDs are committed to Git.
provider "azurerm" {
  features {}
}
