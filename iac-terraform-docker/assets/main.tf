terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "app_net" {
  name = "app_net"
}

resource "docker_image" "backend" {
  name = "httpd:latest"
}

resource "docker_container" "backend" {
  image = docker_image.backend.image_id
  name  = "backend"
  networks_advanced {
    name = docker_network.app_net.name
  }
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
  networks_advanced {
    name = docker_network.app_net.name
  }
  volumes {
    host_path      = "/${path.cwd}/nginx.conf"
    container_path = "/etc/nginx/conf.d/default.conf"
  }
}