#set ouptus for your terraform here


output filestore_ip_address {
    value = google_filestore_instance.instance.networks[0].ip_addresses
}
