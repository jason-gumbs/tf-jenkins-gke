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
resource "google_compute_health_check" "tcp-health-check" {
  name        = "tcp-health-check"
  description = "Health check via tcp"

  timeout_sec         = var.ts
  check_interval_sec  = var.ci
  healthy_threshold   = var.ht
  unhealthy_threshold = var.ut

  tcp_health_check {
    port_name          = "healthcheckport"
    port_specification = "USE_NAMED_PORT"
    request            = "ARE YOU HEALTHY?"
    proxy_header       = "NONE"
    response           = "I AM HEALTHY"
  }
}
resource "google_compute_region_instance_group_manager" "appserver" {
  name = var.name

  base_instance_name = var.instance
  region             = var.region

  target_size = var.target

  version {
    instance_template = var.nissan
  }

  version {
    instance_template =var.honda
    target_size {
      fixed = var.fix
    }
  }
}
resource "google_compute_region_backend_service" "default" {
  name                            = var.computename
  region                          = var.region
  health_checks                   = var.checks
  connection_draining_timeout_sec = var.duration
  session_affinity                = "CLIENT_IP"
}

resource "google_compute_health_check" "default" {
  name               = var.checkcheck
  check_interval_sec = var.sec
  timeout_sec        = var.timeout

  tcp_health_check {
    port = var.miami
  }
}
resource "google_compute_forwarding_rule" "default" {
  name   = var.forwardingrule
  region = var.region

  load_balancing_scheme = var.balancing
  backend_service       = var.backend
  all_ports             = var.ports
  network               = var.network
  subnetwork            = var.subnetwork
}

resource "google_compute_region_backend_service" "backend" {
  name          = var.website
  region        = var.region
  health_checks = var.health
}
resource "google_compute_route" "default" {
  name        = var.computeroute
  dest_range  = var.destrange
  network     = var.network
  next_hop_ip = var.hopip
  priority    = var.priority
}