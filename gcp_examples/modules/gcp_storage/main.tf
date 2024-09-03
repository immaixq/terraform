

resource "google_storage_bucket" "static" {
  name = var.bucket_name
  location = var.bucket_location
  storage_class = var.storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
