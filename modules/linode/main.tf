terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
    }
  }
}

resource "linode_lke_cluster" "this" {
  label       = var.cluster_label
  region      = var.region
  k8s_version = var.k8s_version
  tags        = var.tags

  pool {
    type  = var.node_type
    count = var.node_count
  }
}