provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone

}

module "gke" {
  source = "../modules/gke"
  cluster_name_suffix = var.cluster_name_suffix
  ip_range_pods = var.ip_range_pods
  ip_range_services = var.ip_range_services
  network = var.network
  project_id = var.project_id
  region = var.region
  subnetwork = var.subnetwork
  zones = var.zones
}



module "storage" {
  source      = "../modules/storage"
  bucket_name = var.bucket_name
}


module "pubsub" {
  source     = "../modules/pubsub"
  topic_name = var.topic_name
}
resource "google_storage_bucket" "static-site" {
  name = var.google_storage_bucket
}
resource "google_pubsub_topic" "example" {
  name = var.google_pubsub_topic
}

resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = var.test-subnetwork
  ip_cidr_range = var.subnet
  region        = var.helper
  network       = var.newestone
}