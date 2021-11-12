variable "subnetwork" {}
variable "region" {}
variable "project_id" {}
variable "network" {}
variable "ip_range_services" {}
variable "ip_range_pods" {}
variable "cluster_name_suffix" {}
variable "zones" {
  type = list(string)
}