terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
    }
  }
  cloud {
    organization = "Xxeleton"

    workspaces {
      name = "resume-dev"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

provider "linode" {
  token = var.linode_token
}


module "common" {
    providers = {
      linode = linode
    }
    source = "./common"
    environment = var.environment
}