terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.0.0"
    }
  }
}

provider "google" {
  credentials = file("~/.config/gcloud/application_default_credentials.json")
  region      = var.region
}

resource "google_folder" "ccrkt" {
  display_name = "cloudcricket"
  parent       = "folders/0"
}

resource "google_project" "prj_ccrkt" {
  name            = "prj-cloudcricket-${var.env}-0"
  project_id      = "prj-cloudcricket-${var.env}-0"
  folder_id       = google_folder.ccrkt.name
  billing_account = var.billing_account
}
