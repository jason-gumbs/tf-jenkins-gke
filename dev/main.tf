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
  rsa = var.sssss
  memberss = var.jijiji
  buck = var.hhh
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


resource "google_compute_health_check" "tcp-health-check" {
  name        = "tcp-health-check"
  description = "Health check via tcp"

  timeout_sec         = var.ts
  check_interval_sec  = var.cis
  healthy_threshold   = var.ht
  unhealthy_threshold = var.uth

  tcp_health_check {
    port_name          = "health-check-port"
    port_specification = "USE_NAMED_PORT"
    request            = "ARE YOU HEALTHY?"
    proxy_header       = "NONE"
    response           = "I AM HEALTHY"
  }
}

resource "google_compute_region_instance_group_manager" "appserver" {
  name = "appserver-igm"

  base_instance_name = "app"
  region             = "us-central1"

  target_size = var.tarsz

  version {
    instance_template = var.intem
  }

  version {
    instance_template = var.temin
    target_size {
      fixed = var.fixed
    }
  }
}

resource "google_compute_region_backend_service" "default" {
  name                            = "region-service"
  region                          = "us-central1"
  health_checks                   = var.hcheck
  connection_draining_timeout_sec = var.connectio
  session_affinity                = "CLIENT_IP"
}

resource "google_compute_health_check" "default" {
  name               = "rbs-health-check"
  check_interval_sec = var.chis
  timeout_sec        = var.ts

  tcp_health_check {
    port = var.porttt
  }
}

resource "google_compute_forwarding_rule" "default" {
  name   = "website-forwarding-rule"
  region = "us-central1"

  load_balancing_scheme = "INTERNAL"
  backend_service       = var.backendservice
  all_ports             = var.all_ports
  network               = var.networkkk
  subnetwork            = var.subnetty
}

resource "google_compute_region_backend_service" "backend" {
  name          = "website-backend"
  region        = "us-central1"
  health_checks = var.hccccc
}

resource "google_compute_route" "default" {
  name        = "network-route"
  dest_range  = var.destrange
  network     = var.networkkkkkkkkk
  next_hop_ip = var.nexthopip
  priority    = var.priorrrr
}

