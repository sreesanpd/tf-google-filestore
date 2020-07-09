#
# set  the variables here


variable env {
  description = "GCP Environment"
  type        = map(string)
  default = {
    project     = "<your google project id>"
    region      = "europe-north1"
    credentials = "../filestore-terraform-sa.json" #full path to service account credentials json file
  }
}


variable instance {
    description = "Filestore Instance"
    type   = map(string)
    default = {
      name = "gke-prod-filestore"
      zone = "europe-north1-a"
      tier = "STANDARD"
    }
}

variable file_shares {
    description = "Fileshare details"
    type = map(string)
    default = {
        capacity_gb = 1024
        name        = "gke_prod_vol1"
    }
}

variable networks {
    description = "VPC Networks for filestore"
    type = object({
        network = string
        modes = list(string)
#        reserved_ip_range = string
    })
    default = {
        network = "shared-vpc-prod"
        modes   = ["MODE_IPV4"]
#        reserved_ip_range = "10.17.25.200/29"
    }
}
