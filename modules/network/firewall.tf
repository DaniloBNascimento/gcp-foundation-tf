resource "google_compute_firewall" "default" {
  name    = var.firewall_name
  network = google_compute_network.vpc_main.name
  depends_on = [
    google_compute_network.vpc_main
  ]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  source_tags = ["web"]
}