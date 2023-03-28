terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.58.0"
    }
  }
}

provider "google" {
  project = "gcp-project-id"
  region  = "eu-west1"
  zone    = "eu-west1-a"
}
