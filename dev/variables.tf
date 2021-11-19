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
variable "image_id" {
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


variable "location" {
  type = string
}
variable "yellow" {
  type = string
}
variable "green" {
  type = string
}
variable "newip2021" {
  type = string
}
variable "homework" {
  type = list(string)
}
variable "address" {
  type = list(string)
}
variable "project-factory" {
  type = string
}
variable "org_id" {
  type = number
}
variable "usage_bucket_name" {
  type = string
}
variable "usage_bucket_prefix" {
  type = string
}
variable "billing_account" {
  type = string
}
variable "svpc_host_projects_id" {
  type = string
}
variable "random_project_id" {
  type = bool
}
variable "shared_vpc_subnets" {
  type = list(string)
}
variable "grapes" {
  type = string
}
variable "orange" {
  type = string
}
variable "purple" {
  type = list(string)
}
variable "black" {
  type = string
}