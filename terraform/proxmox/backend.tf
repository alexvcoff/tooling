terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "home-lab/laptop/proxmox.tfstate"
    region = "EEUR"

    skip_credentials_validation = true
    skip_region_validation      = true
    #skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    #skip_s3_checksum            = true
  }
}