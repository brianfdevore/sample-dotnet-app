provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

data "google_compute_image" "source_image" {
  family = "bfd-win2016"  #returns the latest image from family which isn't deprecated
  project = var.project_id
}

resource "google_compute_instance" "vm_instance" {
  name                      = var.hostname
  machine_type              = "e2-standard-2"
  tags                      = ["ssh", "http", "rdp", "default-uscentral1"]
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      #image = "debian-cloud/debian-9"
      #image = "sab-ssvcs-gold-images-c3d9/sabre-rhel-7-oslogin-rc-202008150800"
      #image = "sab-ssvcs-gold-images-c3d9/sabre-winops-win2016-20200805"
      #image = var.source_image
      image = data.google_compute_image.source_image.self_link
    }
  }

  network_interface {
    subnetwork = "projects/sab-ssvcs-network-vpcs-5041/regions/us-central1/subnetworks/sn-dev-uscentral1-01"
  }
  
  metadata = {
    enable-oslogin = "True"
  }
  
  service_account {
    email  = "388291779166-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}
