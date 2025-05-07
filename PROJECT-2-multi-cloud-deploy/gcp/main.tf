resource "google_compute_instance" "web" {
  name         = "gcp-nginx"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  tags = ["nginx-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {} # For public IP
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    systemctl start nginx
  EOT
}
