terraform {
  required_providers {
    proxmox = {
      source  = "registry.hostix.ee/telmate/proxmox"
      version = ">=3.0.1"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://${var.PROXMOX_HOST}/api2/json"
  pm_api_token_id = var.PROXMOX_API_TOKEN
  pm_api_token_secret = var.PROXMOX_API_SECRET
  pm_tls_insecure     = true
#   endpoint = "https://${var.PROXMOX_HOST}/api2/json"
#   api_token = "${var.PROXMOX_API_TOKEN}=${var.PROXMOX_API_SECRET}"
#   insecure  = true
}