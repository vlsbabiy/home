resource "google_compute_subnetwork" "general_network_subnetwork" {
  name          = "${var.subnetwork}"
  ip_cidr_range = "${var.subnetwork_ip_range}"
  network       = "${google_compute_network.general_network.self_link}"
}
