terraform {
  backend "gcs" {
    bucket = "test0s-bucket"
    prefix = "terraform/state"
  }
}
