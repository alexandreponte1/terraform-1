locals {
  ip_filepath = "ips.json"
  contenttype = "application/json"

  common_tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "YuSuK3"
  }
}
