locals {
  name_prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    owner       = var.owner
  }
}
