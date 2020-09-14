terraform {
  backend "gcs" {
    //gsutil mb gs://sab-dev-sand-shs-temp-9341-windows-sample-app-tf-admin
    bucket = "sab-dev-sand-shs-temp-9341-windows-sample-app-tf-admin"
    prefix = "terraform-state/stage"
  }
}