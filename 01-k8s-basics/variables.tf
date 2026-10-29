variable "namespace" {
  description = "Kubernetes namespace to deploy into"
  type        = string
  default     = "terraform-demo"
}

variable "replicas" {
  description = "Number of pod replicas"
  type        = number
  default     = 2
}

variable "app_env" {
  description = "Application environment"
  type        = string
  default     = "production"
}

variable "image_tag" {
  description = "Docker image tag to deploy"
  type        = string
  default     = "v2"
}
