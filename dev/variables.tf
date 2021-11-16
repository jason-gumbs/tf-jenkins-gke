variable "project_id" {
  type = string
}


variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "bucket_name" {
  type = string
}
variable "topic_name" {
  type = string
}

variable "cluster_name_suffix" {
  default = ""
}
variable "ip_range_pods" {
  default = ""
}
variable "ip_range_services" {
  default = ""
}
variable "network" {
  default = ""
}
variable "subnetwork" {
  default = ""
}

variable "zones" {
  type = list(string)
}
variable "google_storage_bucket" {
  type = string
}
variable "google_pubsub_topic" {
  type = string
}
variable "google_compute_subnetwork"  {
  type = string
}
variable "test-subnetwork" {
  type = string
}
variable "subnet" {
  type = string
}
variable "helper" {
  type = bool
}
variable "newestone" {
  type = string
}
variable "cluster_name" {
  type = string
}
variable "my_location" {
  type = string
}
variable "bool_type" {
  type = bool
}
variable "count_of_nodes" {
  type = number
}
variable "this_is_my_cluster" {
  type = string
}
variable "this_is_my_zone" {
  type = string
}
variable "this_is_my_bool_type" {
  type = number
}
variable "this_is_my_provider" {
  type = string
}
variable "namere" {
  type = string
}
variable "zonere" {
  type = string
}
variable "databasere" {
  type = string
}
variable "tierre" {
  type = string
}
variable "deletionp" {
  type = bool
}