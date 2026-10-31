variable "name_prefix" {
  description = "Prefix for resource names, e.g. flask-dev"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group to deploy into"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet the VM's NIC is placed in"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
}

variable "admin_username" {
  description = "Linux admin user"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key contents (not a path)"
  type        = string
}

variable "tags" {
  description = "Tags applied to every taggable resource"
  type        = map(string)
  default     = {}
}
