provider "google" {
  project = var.google_project_id
  region = "europe-north1"
}


terraform {
    backend "gcs" {
    bucket  = "arasaka-terraform"
    prefix  = "state"
  }
}