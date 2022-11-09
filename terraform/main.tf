terraform {
  required_version = ">= 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "jenkins" {
  image     = "ubuntu-22-04-x64"
  name      = "jenkins"
  region    = "sfo3"
  size      = "s-2vcpu-4gb-intel"
  user_data = file("jenkins_app.yaml")
}

resource "digitalocean_kubernetes_cluster" "k8scluster01" {
  name   = "k8scluster01"
  region = "sfo3"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.24.4-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-4gb-intel"
    node_count = 2

    taint {
      key    = "workloadKind"
      value  = "database"
      effect = "NoSchedule"
    }
  }
}
