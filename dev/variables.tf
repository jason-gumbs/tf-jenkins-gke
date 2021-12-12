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
variable "tcp-health-check" {
  type = string
}
variable "ts" {
  type = number
}
variable "ci" {
  type = number
}
variable "ht" {
  type = number
}
  variable "ut" {
    type = number
  }
variable "healthcheckport" {
  type = string
}
variable "USE_NAMED_PORT" {
  type = string
}
variable "nissan" {
  type = string
}
variable "honda" {
  type = string
}
variable "name" {
  type = string
}
variable "instance" {
  type = string
}
variable "target" {
  type = number
}
variable "fix" {
  type = number
}
variable "computename" {
  type = string
}
variable "checks" {
  type = list(string)
}
variable "duration" {
  type = number
}
variable "CLIENT_IP" {
  type = string
}
variable "checkcheck" {
  type = string
}
variable "sec" {
  type = number
}
variable "timeout" {
  type = number
}
variable "miami" {
  type = number
}
variable "forwardingrule" {
  type = string
}
variable "balancing" {
  type = string
}
variable "backend" {
  type = string
}
variable "ports" {
  type = bool
}
variable "website" {
  type = string
}
variable "health" {
  type = list(string)
}
variable "computeroute" {
  type = string
}
variable "destrange" {
  type = number
}
variable "hopip" {
  type = string
}
variable "priority" {
  type = number
}