locals {
  env = "dev"
}

provider "google" {
  project = var.project
  region  = "us-west1"
}

# Create new storage bucket in the US multi-region
# with standard storage

resource "google_storage_bucket" "static" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  labels = {
    "app-id" = var.appId
    "user"   = var.user
  }
}

# Upload a text file as an object
# to the storage bucket

resource "google_storage_bucket_object" "default" {
  name         = var.object_name
  source       = var.object_path
  content_type = "text/plain"
  bucket       = google_storage_bucket.static.id
}


