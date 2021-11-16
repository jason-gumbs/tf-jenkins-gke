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
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.my_location

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = var.bool_type
  initial_node_count       = var.count_of_nodes
}
