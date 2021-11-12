resource "google_storage_bucket" "codit-test-buckets" {
  name     = var.bucket_name
  location = "US"
}