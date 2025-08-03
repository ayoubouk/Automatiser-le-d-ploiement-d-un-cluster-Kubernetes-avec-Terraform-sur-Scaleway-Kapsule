locals {
  environment = "dev"
  full_cluster_name = "${var.cluster_name}-${local.environment}"
}
