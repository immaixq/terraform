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

variable "cloud_sql_name" {
  description = "name of the cloud sql instance"
  type = string
}

variable "database_version" {
  description = "database version of the cloud sql instance"
  type = string
}

variable "cloud_sql_db_region" {
  description = "region of the cloud sql instance"
  type = string
}

variable "tier" {
  description = "tier of the cloud sql instance"
  type = string
}

variable "database_name" {
  description = "database name of the cloud sql instance"
  type = string
}
