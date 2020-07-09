resource "google_filestore_instance" "instance" {
  name = var.instance.name
  zone = var.instance.zone
  tier = var.instance.tier

  file_shares {
    capacity_gb = var.file_shares.capacity_gb
    name        = var.file_shares.name
  }

  networks {
    network = var.networks.network
    modes   = var.networks.modes
  }
}
