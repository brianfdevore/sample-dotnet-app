provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
  //credentials = "sab-dev-sand-shs-temp-9431-xxx.json" //<-- use in prod with a SA, or alternatively, you can run 'gcloud auth application-default login' for local dev
}
module "win2016" {
  source = "./win"
}

