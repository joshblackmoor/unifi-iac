terraform {
  required_providers {
    unifi = {
      source  = "ubiquiti-community/unifi"
      version = "0.41.2"
    }
  }
}

provider "unifi" {
  username = var.username
  password = var.password
  api_url  = var.api_url

  allow_insecure = true
}
