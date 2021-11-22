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

variable "banks" {
  type = string
}

variable "googlecloud" {
  type = string
}

variable "kwanzaa" {
  type = list(string)
}