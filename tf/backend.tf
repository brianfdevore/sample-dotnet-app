terraform {
 backend "gcs" {
   //gsutil mb gs://shs-synxis-apm-tf-admin
   bucket  = "shs-synxis-apm-tf-admin"
   prefix  = "terraform/state"
 }
}