project_id      = "sab-dev-sand-shs-temp-9341"
region          = "us-central1"
zone            = "us-central1-a"
hostname        = "sample-dotnet-app-host"
machine_type    = "e2-standard-2"
tags            = ["ssh", "http", "rdp", "default-uscentral1"]
network_interface = "projects/sab-ssvcs-network-vpcs-5041/regions/us-central1/subnetworks/sn-dev-uscentral1-01"
network         = "vpc-dev"
service_account = "388291779166-compute@developer.gserviceaccount.com"
source_image_family = "bfd-win2016"
subnet          = "subnet01"
image_name      = "gcp-go-app-1-2-0"
machine_type    = "g1-small"
svc_acct        = "388291779166-compute@developer.gserviceaccount.com"
svc_acct_scopes = ["cloud-platform"]
env             = "default-terraform-tfvars-value"