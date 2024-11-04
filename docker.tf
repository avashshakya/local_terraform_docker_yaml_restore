provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "rancher" {
  name         = "rancher/rancher:v2.8.4"
  keep_locally = false
}

resource "docker_container" "rancher" {
  image      = docker_image.rancher.image_id
  name       = "rancher"
  privileged = true
  restart    = "unless-stopped"

  ports {
    internal = 443
    external = 8888
  }
}
