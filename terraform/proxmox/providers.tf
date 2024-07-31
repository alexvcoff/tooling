terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=2.9.14"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://${var.PROXMOX_HOST}/api2/json"
  pm_api_token_id = var.PROXMOX_API_TOKEN
  pm_api_token_secret = var.PROXMOX_API_SECRET
  pm_tls_insecure     = true
}