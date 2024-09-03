variable "project_id" {
  description = "Google Cloud Project ID."
  type        = string
}

variable "bucket_name" {
  description = "The name of the GCS bucket. Must be globally unique."
  type        = string
}

variable "bucket_location" {
  description = "The location of the GCS bucket."
  type        = string
  default     = "US"  # Optional: specify location
}
