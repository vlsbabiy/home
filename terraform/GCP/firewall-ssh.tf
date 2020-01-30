resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = "${google_compute_network.general_network.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-firewall-ssh"]
}
