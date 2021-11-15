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