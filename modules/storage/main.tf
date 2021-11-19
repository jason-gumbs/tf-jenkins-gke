resource "google_storage_bucket" "codit-test-buckets" {
  name     = var.bucket_name
  location = "US"
}
data "google_iam_policy" "admin" {
  binding {
    role = var.roles
    members = var.members
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket = var.bucket
  policy_data = data.google_iam_policy.admin.policy_data
}
