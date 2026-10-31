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

variable "vm_size" {
  description = "Azure VM size"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key used to log in to the VM"
  type        = string
}
