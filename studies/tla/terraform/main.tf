terraform {
  required_providers {
    google = {
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("/home/rede-magic/Downloads/projeto.json")
  project     = "regal-reporter-298211"
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_network" "vpc_network" {
  name = "new-terraform-network"
}

terraform {
  backend "gcs" {
    bucket      = "bucket-terraform-test1"
    prefix      = "terraform1"
    credentials = "/home/rede-magic/Downloads/projeto.json"
  }
}
