resource "google_pubsub_topic" "example" {
  name = var.topic_name
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/viewer"
    members = []
  }
}
