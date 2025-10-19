terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "my-devops-playground-468422"
  region  = "us-central1"
}

# Create a new storage bucket
resource "google_storage_bucket" "test_bucket" {
  name          = "terraform-playground-bucket-468422"  
  location      = "US"
  force_destroy = true

  labels = {
    environment = "playground"
  }

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}