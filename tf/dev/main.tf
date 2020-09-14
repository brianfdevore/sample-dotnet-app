# Launch a single GCE instance
module "win2016-instance" {
  source              = "../modules/win"
  project_id          = "sab-dev-sand-shs-temp-9341"
  region              = "us-central1"
  zone                = "us-central1-a"
  hostname            = "sample-dotnet-app-host"
  machine_type        = "e2-standard-2"
  tags                = ["ssh", "http", "rdp", "default-uscentral1"]
  network_interface   = "projects/sab-ssvcs-network-vpcs-5041/regions/us-central1/subnetworks/sn-dev-uscentral1-01"
  network             = "vpc-dev"
  service_account     = "388291779166-compute@developer.gserviceaccount.com"
  source_image_family = "bfd-win2016"
  subnet              = "subnet01"
  svc_acct            = "388291779166-compute@developer.gserviceaccount.com"
  svc_acct_scopes     = ["cloud-platform"]
  env                 = "dev"
}

# # Launch a MIG
# module "win2016-mig" {
#   source          = "../modules/mig"
#   project_id      = "sab-dev-sand-shs-temp-9341"
#   region          = "us-central1"
#   zone            = "us-central1-a"
#   be_name         = "xyz"
#   be_port_name    = "xyz"
#   be_protocol     = "xyz"
#   be_timeout      = "xyz"
#   be_session_affinity = "xyz"
#   hc_name         = "xyz"
#   hc_port         = "xyz"
#   rmig_name       = "xyz"
#   rmig_as_name    = "xyz"
#   base_instance_name  = "xyz"
#   prefix          = "xyz"
#   desc            = "xyz"
#   desc_inst       = "xyz"
#   source_image    = "xyz"
#   gfr_name        = "xyz"
#   gfr_portrange   = "xyz"
#   thp_name        = "xyz"
#   urlmap_name     = "xyz"
#   tags            = ["ssh", "http", "rdp", "default-uscentral1"]
#   network_interface = "projects/sab-ssvcs-network-vpcs-5041/regions/us-central1/subnetworks/sn-dev-uscentral1-01"
#   machine_type    = "g1-small"
#   env             = "default-terraform-tfvars-value"
# }

