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

# # GCP does not allow for the creation of folders at root with no organisational resource
# resource "google_folder" "ccrkt" {
#   display_name = "cloudcricket"
#   parent       = "folders/0"
# }

resource "google_project" "prj_ccrkt" {
  name       = "prj-cloudcricket-${var.env}-0"
  project_id = "prj-cloudcricket-${var.env}-0"
  # folder_id       = "folders/0"
  billing_account = var.billing_account
}
