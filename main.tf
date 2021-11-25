# Configure Rancher provider
terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
    }
  }
}

provider "rancher2" {
  api_url = "https://sanes-rancher.westeurope.cloudapp.azure.com"
  access_key = var.access_key
  secret_key = var.secret_key
  insecure = true
}

resource "rancher2_cluster" "rke" {
  name = var.name
  description = var.description

  rke_config {
    network {
      plugin = var.kubernetes_network_plugin
    }
  }

}