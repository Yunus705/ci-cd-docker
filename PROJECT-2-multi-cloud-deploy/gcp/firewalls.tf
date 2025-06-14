resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = "default"  

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["nginx-server"]
}
