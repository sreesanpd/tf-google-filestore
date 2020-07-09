#
# GCP provider


provider "google" {
  version = "= 3.19"

  project     = var.env.project
  region      = var.env.region
  credentials = file(var.env.credentials)
}
