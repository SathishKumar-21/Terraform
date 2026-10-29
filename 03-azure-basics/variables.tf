variable "project" {
  description = "Project name used as a prefix for resource names"
  type        = string
  default     = "flask"
}

variable "environment" {
  description = "Environment name (dev, prod)"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralindia"
}

variable "my_ip" {
  description = "Your public IP, allowed to SSH into the app subnet"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size (B1s is free-tier eligible)"
  type        = string
  default     = "Standard_B1s"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key used to log in to the VM"
  type        = string
  default     = "~/.ssh/azure_lab.pub"
}
