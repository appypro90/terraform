terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
    }
  }
}

module "resource-group" {
  source = "../modules/azure/resource-group"
  name = "resume-rg-${var.environment}"
  location = "Australia Southeast"
  tags = merge(
    var.common_tags,
    {
      "environment" = var.environment
    }
  )
}

module "cosmosdb" {
  source = "../modules/azure/cosmos-db"
  name = "resume-cosmos-${var.environment}"
  location = "Australia Southeast"
  resource_group_name = module.resource-group.resource_group_name
  tags = merge(
    var.common_tags,
    {
      "environment" = var.environment
    }
  )
}

module "storage_account" {
  source              = "../modules/azure/storage-account"
  account_name        = "genairesumestorage${var.environment}"
  location = "Australia Southeast"
  resource_group_name = module.resource-group.resource_group_name
  account_tier        = "Standard"
  account_replication_type = "GRS"
  tags = merge(
    var.common_tags,
    {
      "environment" = var.environment
    }
  )
}

module "linode_cluster" {
  source        = "../modules/linode"
  cluster_label = "resume-builder-${var.environment}"
  region        = "ap-southeast"
  k8s_version   = "1.30"
  node_type     = "g6-standard-1"
  node_count    = 1
  tags          = ["environment:dev", "project:project2"]
}