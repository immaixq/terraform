
variable "bucket_name" {
  description = "unique gcp bucket name"
  type = string
}

variable "bucket_location" {
  description = "location of gcp bucket"
  type = string
  default = "us-central1"
}

variable "storage_class" {
  description = "storage class of gcp bucket"
  type = string
  default = "STANDARD"
}