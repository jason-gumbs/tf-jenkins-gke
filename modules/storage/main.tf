resource "google_storage_bucket" "codit-test-buckets" {
  name     = var.bucket_name
  location = "US"
}

resource "google_storage_bucket_iam_binding" "binding" {
  bucket = var.baruch_bucket
  role = var.engineer
  members = var.christmaslist

}