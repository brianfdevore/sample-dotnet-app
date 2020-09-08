variable "project_id" {
  description = "sab-dev-sand"
  type        = string
  default     = "sab-dev-sand-shs-temp-9341"
}
variable "region" {
  description = "The GCP region to create and test resources in"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "zone where the resources will be created"
  type = string
  default = "us-central1-c"
}

variable "hostname" {
  description = "name of the instance"
  type = string
  default = "jenkins-rhel"
}

variable "network" {
  description = "network name"
  type = string
  default = "default"
}
variable "service_account" {
  default = "388291779166-compute@developer.gserviceaccount.com"
}
