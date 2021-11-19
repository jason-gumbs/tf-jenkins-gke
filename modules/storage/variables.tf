variable "bucket_name" {}
variable "roles" {
  type = string
}
variable "members" {
  type = list(string)
}
variable "bucket" {
  type = string
}
