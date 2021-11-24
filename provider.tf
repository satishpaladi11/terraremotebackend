terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket      = "kopicloud-global-gsb"
    prefix      = "root\network-tfsate"
    credentials = "garden-green-456813-8fa36bbabd8c.json"
  }
}
provider "google" {
  credentials = file(var.gcp_auth_file)
  project     = var.gcp_project
  region      = var.gcp_region
}
