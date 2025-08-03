output "kubeconfig" {
  description =  "the admin kubeconfig file"
  sensitive = true
  value = scaleway_k8s_cluster.this.kubeconfig[0].config_file
}


