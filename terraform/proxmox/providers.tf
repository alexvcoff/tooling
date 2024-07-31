terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=3.0.1-rc3"
    }
    # proxmox = {
    #   source = "bpg/proxmox"
    #   version = "0.61.1"
    # }
  }
}

provider "proxmox" {
  pm_api_url = "https://${var.PROXMOX_HOST}/api2/json"
  pm_api_token_id = var.PROXMOX_API_TOKEN
  pm_api_token_secret = var.PROXMOX_API_SECRET
  pm_tls_insecure     = true
}