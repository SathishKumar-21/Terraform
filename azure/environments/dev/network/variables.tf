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

variable "location" {
  description = "Azure region"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "app_subnet_prefix" {
  description = "CIDR for the app subnet"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "Source CIDR allowed to SSH (your ISP's exit range)"
  type        = string
}
