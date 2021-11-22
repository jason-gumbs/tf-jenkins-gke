resource "google_storage_bucket" "codit-test-buckets" {
  name     = var.bucket_name
  location = "US"
}

data "google_iam_policy" "admin" {
  binding {
    role = var.georgia
    members = var.washington
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket = var.new_york
  policy_data = data.google_iam_policy.admin.policy_data
}