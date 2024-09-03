provider "google" {
  credentials = file("~/Download/service-account.json")  # Path to your service account key
  project     = var.project_id
  region      = var.bucket_location
}

module "gcp_storage" {
  source          = "../../modules/gcp_storage"
  bucket_name     = var.bucket_name
  bucket_location = var.bucket_location
}
