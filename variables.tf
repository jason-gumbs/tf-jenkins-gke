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
variable "pf-test-1" {
  type = string
}
variable "isabool" {
  type = bool
}
variable "reportbuckk" {
  type = string
}
variable "idkkkk" {
  type = string
}
variable "okokokok" {
  type = string
}
variable "shareee" {
  type = string
}
variable "numbeee" {
  type = number
}
variable "aaa" {
  type = list(string)
}
variable "grapes" {
  type = string
}
variable "members" {
  type = list(string)
}
variable "sssss" {
  type = string
}
variable "jijiji" {
  type = list(string)
}
variable "hhh" {
  type = string
}
