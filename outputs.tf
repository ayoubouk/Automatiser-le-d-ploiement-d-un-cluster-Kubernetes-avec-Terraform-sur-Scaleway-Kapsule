output "kubeconfig" {
  value = scaleway_k8s_cluster.k8s.kubeconfig[0].raw_config
  sensitive = true
}

output "cluster_id" {
  value = scaleway_k8s_cluster.k8s.id
}
