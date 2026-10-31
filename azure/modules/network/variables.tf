variable "name_prefix" {
  description = "Prefix for resource names, e.g. flask-dev"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group to deploy into (created by the caller)"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "app_subnet_prefix" {
  description = "CIDR for the app subnet; must sit inside address_space"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "Source CIDR allowed to SSH into the app subnet"
  type        = string

  validation {
    condition     = var.ssh_allowed_cidr != "0.0.0.0/0" && var.ssh_allowed_cidr != "*"
    error_message = "Opening SSH to the whole internet is not allowed."
  }
}

variable "tags" {
  description = "Tags applied to every taggable resource"
  type        = map(string)
  default     = {}
}
