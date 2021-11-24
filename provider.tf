terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket      = "terraremote-bucket85558"
    prefix      = "root\network-tfsate"
    credentials = "calcium-post-282611-3d088c407491.json"
  }
}
provider "google" {
  credentials = file(var.gcp_auth_file)
  project     = var.gcp_project
  region      = var.gcp_region
}
