provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone

}

module "gke" {
  source              = "../modules/gke"
  cluster_name_suffix = var.cluster_name_suffix
  ip_range_pods       = var.ip_range_pods
  ip_range_services   = var.ip_range_services
  network             = var.network
  project_id          = var.project_id
  region              = var.region
  subnetwork          = var.subnetwork
  zones               = var.zones
}



module "storage" {
  source      = "../modules/storage"
  bucket_name = var.bucket_name
  bucket      = var.orange
  members     = var.purple
  roles       = var.black
}

module "pubsub" {
  source     = "../modules/pubsub"

  topic_name = ""
}
resource "google_compute_address" "default" {
  for_each = toset(var.address)
  name     = each.key
}
