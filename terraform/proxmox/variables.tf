variable "PROXMOX_API_TOKEN" {
  type = string
  description = "Proxmox API token ID"
}

variable "PROXMOX_API_SECRET" {
  type = string
  description = "Proxmox API secret"
}

variable "PROXMOX_HOST" {
  type = string
  description = "Hostname or IP address of Proxmox"
  default = "proxmox.mydomain.intra:8006"
}