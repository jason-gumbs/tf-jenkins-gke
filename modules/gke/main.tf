module "kubernetes-engine_example_simple_regional" {
  source  = "terraform-google-modules/kubernetes-engine/google//examples/simple_zonal_with_asm"
  version = "17.1.0"
  # insert the 7 required variables here
  cluster_name_suffix = var.cluster_name_suffix
  ip_range_pods = var.ip_range_pods
  ip_range_services = var.ip_range_services
  network = var.network
  project_id = var.project_id
  region = var.region
  subnetwork = var.subnetwork
  zones = var.zones
}
