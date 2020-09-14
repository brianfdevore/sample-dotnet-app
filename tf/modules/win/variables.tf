variable "project_id" {
  description = "project id for this deployment"
  type        = string
  default     = "sab-dev-sand-shs-temp-9341"
}
variable "region" {
  description = "region to create and test resources in"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "zone where the resources will be deployed"
  type        = string
  default     = "us-central1-a"
}

variable "hostname" {
  description = "name of the instance"
  type        = string
  default     = "sample-dotnet-app-host"
}

variable "network" {
  description = "network name"
  type        = string
  default     = "vpc-dev"
}
variable "service_account" {
  description = "GCP service account for this instance"
  type        = string
  default     = "388291779166-compute@developer.gserviceaccount.com"
}
# variable "source_image" {
#   description = "boot image for this instance"
#   type        = string
#   default     = "bfd-shs-win2016--2020-09-10t15-57-35z"
# }
variable "env" {
  description = "application deployment environment within GCP"
  type        = string
  default     = "dev"
}
variable "machine_type" {
  description = "GCE instance type for VM"
  type        = string
  default     = "g1-small"
}
variable "tags" {
  description = "GCE instance network tags"
  type        = list(string)
  default     = ["ssh", "http", "rdp", "default-uscentral1"]
}
variable "network_interface" {
  description = "project/region/subnetwork"
  type        = string
  default     = "projects/sab-ssvcs-network-vpcs-5041/regions/us-central1/subnetworks/sn-dev-uscentral1-01"
}
variable "source_image_family" {
  description = "source image family"
  type        = string
  default     = "bfd-win2016"
}
variable "subnet" {
  description = "subnetwork name"
  type        = string
  default     = "subnet01"
}
variable "svc_acct" {
  description = "GCP service account"
  type        = string
  default     = "388291779166-compute@developer.gserviceaccount.com"
}
variable "svc_acct_scopes" {
  description = "service account scopes"
  type        = list(string)
  default     = ["cloud-platform"]
}
