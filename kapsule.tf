resource "scaleway_k8s_cluster" "k8s" {
  name       = local.full_cluster_name
  region     = var.scaleway_region
  version    = "1.28.2"
  cni        = "cilium"
  tags       = ["pfe", "dev"]
  delete_additional_resources = true
}

resource "scaleway_k8s_pool" "pool" {
  cluster_id = scaleway_k8s_cluster.k8s.id
  name       = var.node_pool_name
  node_type  = "DEV1-M"
  size       = var.node_count
  autohealing = true
}
