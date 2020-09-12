provider "google" {
  version = "~> 3.34"
  project = var.project_id
}

data "google_compute_image" "source_image" {
  family = var.source_image_family  #returns the latest image from family which isn't deprecated
  project = var.project_id
}

resource "google_compute_instance" "vm_instance" {
  name                      = var.hostname
  machine_type              = var.machine_type
  tags                      = var.tags
  allow_stopping_for_update = true
  zone                      = var.zone

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
    subnetwork = var.network_interface
  }
  
  metadata = {
    enable-oslogin = "True"
    app-environment = var.env
  }
  
  service_account {
    email  = var.svc_acct
    scopes = var.svc_acct_scopes
  }

    metadata_startup_script = "echo Environment is: ${var.env} > C:\test.txt"

}
