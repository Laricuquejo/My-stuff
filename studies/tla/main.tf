
provider "google" {
  version = "3.5.0"

  credentials = file("terraform-key.json")

  project = regal-reporter-298211
  region  = us-central1
  zone    = ""
}

resource "google_compute_network" "vpc_network" {
  name = "new-terraform-network"
}

terraform {
  backend "gcs" {
    bucket = "tf-state-prod"
    prefix = "terraform/state"
    
   }
}
