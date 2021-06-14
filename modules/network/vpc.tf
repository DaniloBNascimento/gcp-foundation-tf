resource "google_compute_network" "vpc_main" {
  name                      = var.vpc_name
  mtu                       = 1500
  description               = "vpc to project"
  auto_create_subnetworks   = true
}

resource "google_compute_project_default_network_tier" "default" {
    network_tier            = "PREMIUM"
}