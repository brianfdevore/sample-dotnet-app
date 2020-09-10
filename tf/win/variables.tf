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
