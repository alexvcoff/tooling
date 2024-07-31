resource "proxmox_vm_qemu" "k8s-master" {
  name        = "kube-master1"
  target_node = "proxmox"
  vmid        = 101
  clone       = "template-ubuntu-24-04"
  onboot      = true
  os_type     = "cloud-init"
#   cpu         = "kvm64"
  cores       = 2
  sockets     = 1
  memory      = 2048
  scsihw      = "virtio-scsi-pci"
#   bootdisk    = "scsi0"

  network {
    model     = "virtio"
    bridge    = "vmbr0"
    firewall  = false
    link_down = false
  }

  ipconfig0 = "ip=192.168.1.201/24,gw=192.168.11.1"
}