output "cluster_id" {
  value       = linode_lke_cluster.this.id
  description = "The ID of the LKE cluster."
}

output "kubeconfig" {
  value       = linode_lke_cluster.this.kubeconfig
  description = "The Kubeconfig for the LKE cluster."
}