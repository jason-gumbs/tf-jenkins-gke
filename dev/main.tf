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
  topic_name = var.topic_name
}

module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name                 = var.pf-test-1
  random_project_id    = var.isabool
  org_id               = var.numbeee
  usage_bucket_name    = var.reportbuckk
  usage_bucket_prefix  = var.idkkkk
  billing_account      = var.okokokok
  svpc_host_project_id = var.shareee

  shared_vpc_subnets = var.aaa
}
