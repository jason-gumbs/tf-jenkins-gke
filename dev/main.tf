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
}

module "pubsub" {
  source     = "../modules/pubsub"
  topic_name = var.image_id
}


resource "google_compute_address" "default" {
  for_each = toset(var.address)
  name     = each.key
}

module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name                 = var.project-factory
  random_project_id    = var.random_project_id
  org_id               = var.org_id
  usage_bucket_name    = var.usage_bucket_name
  usage_bucket_prefix  = var.usage_bucket_prefix
  billing_account      = var.billing_account
  svpc_host_project_id = var.svpc_host_projects_id

  shared_vpc_subnets = var.shared_vpc_subnets
}

