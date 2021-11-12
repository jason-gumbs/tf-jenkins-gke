project_id          = "sandbox-io-289003"
credentials_file = "<FILE>"
topic_name       = "<TOPIC_NAME>"
bucket_name      = "<BUCKET_NAME>"











############# GKE Cluster details Below ###########################
zones = ["us-central1-c"]
cluster_name_suffix = "-codit-labs"
network = "shared-net"
subnetwork = "tier-1"
ip_range_services = "tier-1-services"
ip_range_pods = "tier-1-pods"