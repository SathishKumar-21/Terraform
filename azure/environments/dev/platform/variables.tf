variable "project" {
  description = "Project name used as a prefix for resource names"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, prod)"
  type        = string
}

variable "owner" {
  description = "Owner tag value"
  type        = string
}

variable "acr_name" {
  description = "Globally unique ACR name (lowercase letters/digits)"
  type        = string
}

variable "acr_sku" {
  description = "ACR tier"
  type        = string
}
