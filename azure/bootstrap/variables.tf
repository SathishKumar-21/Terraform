variable "resource_group_name" {
  description = "Resource group for Terraform state"
  type        = string
  default     = "tfstate-rg"
}

variable "storage_account_name" {
  description = "Globally unique storage account name for state"
  type        = string
  default     = "tfstatesathish24"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralindia"
}

variable "tags" {
  description = "Tags for state resources"
  type        = map(string)
  default = {
    purpose    = "terraform-state"
    managed_by = "terraform"
    owner      = "sathish"
  }
}
