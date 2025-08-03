resource "scaleway_k8s_cluster" "this" {
  name       = "${local.name}-k8s"
  version    = "1.28.0"
  cni        = "calico"
  
  private_network_id = scaleway_vpc_private_network.this.id

  delete_additional_resources = false

  tags =local.tags
}

resource "scaleway_k8s_pool" "this" {
  cluster_id = scaleway_k8s_cluster.this.id
  
  name = "main"
  node_type = "DEV1-M"
  autoscaling = true
  size = 3
  min_size = 3
  max_size = 10
  wait_for_pool_ready = true
  tags = concat(local.tags,["noprefix=pool-target=main"])

}

