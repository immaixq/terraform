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

module "gcp_cloud_sql" {
  source = "../../modules/gcp_cloud_sql"

  name = var.cloud_sql_name
  database_version = var.database_version
  region = var.cloud_sql_db_region
  tier = var.tier
  private_network = "projects/${var.project_id}/global/networks/default"

  database_name = var.database_name




}
