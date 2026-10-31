variable "resource_group_name" {
  description = "Resource group to deploy into"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "acr_name" {
  description = "Globally unique ACR name, 5-50 lowercase letters/digits"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{5,50}$", var.acr_name))
    error_message = "ACR name must be 5-50 lowercase letters or digits (no hyphens)."
  }
}

variable "acr_sku" {
  description = "ACR tier: Basic, Standard or Premium"
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags applied to every taggable resource"
  type        = map(string)
  default     = {}
}
