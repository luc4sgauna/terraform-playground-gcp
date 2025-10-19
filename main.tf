# Configure the Google Cloud provider
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
}

# Create a new storage bucket
resource "google_storage_bucket" "test_bucket" {
  name          = var.bucket_name
  location      = "US"
  force_destroy = true

  # Enable uniform bucket-level access
  uniform_bucket_level_access = true

  # Add versioning
  versioning {
    enabled = true
  }
}