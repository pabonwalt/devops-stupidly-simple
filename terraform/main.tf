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
