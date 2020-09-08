# Creds and default location
variable "credentials" { default = "../sab-shs-synxis-sbx-01-7205-4ceb4d1fd087.json" } // Change with you service account .json file
variable "project"     { default = "sab-dev-sand-shs-temp-9341" } // Your GCP Project ID
variable "region"      { default = "us-central1" }
variable "zone"        { default = "us-central1-c" }
#
# Instance Template
variable "prefix"       { default = "apm-" }
variable "desc"         { default = "This template is used to create apm server instances." }
variable "tags"         { default = "webserver" }
variable "desc_inst"    { default = "APM Web server instance" }
variable "machine_type" { default =  "n1-standard-1" }
variable "source_image" { default =  "sab-ssvcs-gold-images-c3d9/sabre-winops-win2016-20200805" } //shs-win2016--1591664666shs-win2016--1591576917 ubuntu-1804-ltsThis is the family tag used when building the Golden Image with Packer.
variable "network"      { default =  "default" }
#
# Managed Instace Group
variable "rmig_name"          { default =  "apm-rmig" }
variable "base_instance_name" { default =  "apm" }
variable "target_size"        { default =  "3" }
#
# Healthcheck
variable "hc_name" { default = "apm-healthcheck" }
variable "hc_port" { default = "80" }
#
# Backend
variable "be_name"              { default = "http-backend" }
variable "be_protocol"          { default = "HTTP" }
variable "be_port_name"         { default = "http" }
variable "be_timeout"           { default = "10" }
variable "be_session_affinity"  { default = "NONE" }
#
# RMIG Autoscaler
variable "rmig_as_name" { default = "rmig-as" }
#
# Global Forwarding Rule
variable "gfr_name"      { default = "website-forwarding-rule" }
variable "gfr_portrange" { default = "80" }
variable "thp_name"      { default = "http-proxy" }
variable "urlmap_name"   { default = "http-lb-url-map" }
#
# Firewall Rules
variable "fwr_name" { default = "allow-http-https" }