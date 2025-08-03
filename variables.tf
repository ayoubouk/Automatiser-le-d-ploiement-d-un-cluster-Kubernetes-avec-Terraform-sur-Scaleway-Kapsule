variable "scaleway_access_key" {}
variable "scaleway_secret_key" {}
variable "scaleway_project_id" {}
variable "scaleway_region" {
  default = "fr-par"
}
variable "scaleway_zone" {
  default = "fr-par-1"
}

variable "cluster_name" {
  default = "pfe-cluster"
}

variable "node_pool_name" {
  default = "pfe-pool"
}

variable "node_count" {
  default = 2
}
