variable "cluster_label" {
  type        = string
  description = "The label of the LKE cluster."
}

variable "region" {
  type        = string
  description = "The region where the LKE cluster will be deployed."
}

variable "k8s_version" {
  type        = string
  description = "The desired Kubernetes version for the cluster."
}

variable "node_type" {
  type        = string
  description = "The type of Linode instance for the cluster nodes."
}

variable "node_count" {
  type        = number
  description = "The number of nodes in the node pool."
}

variable "tags" {
  type        = list(string)
  description = "A list of tags to apply to the cluster resources."
  default     = []
}