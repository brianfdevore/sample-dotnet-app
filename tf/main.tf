provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
  //credentials = "sab-shs-synxis-sbx-01-7205-4ceb4d1fd087.json"
}
module "win2016" {
    source = "./win"
}
module "jenkins" {
    source = "./jenkins"
}
