resource "google_compute_network" "general_network" {
  name                    = "${var.network}"
  auto_create_subnetworks = false
}
