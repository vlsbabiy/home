resource "google_compute_instance" "ubuntu" {
  name = "${var.instance}"

  ## uncomment if you need multiple instances
  # count        = 2
  # name         = "${var.instance}-${count.index}"
  machine_type = "${var.instance_type}"

  zone = "${var.instance_zone}"

  tags = [
    "${var.network}-firewall-ssh",
  ]

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-1804-lts"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.general_network_subnetwork.name}"
  }
  metadata  = {
    sshKeys = "${var.ssh_username}:${file(var.ssh_public_key_file)}"
}
}
