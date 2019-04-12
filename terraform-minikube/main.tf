provider "minikube" {

}

resource "minikube" "cluster" {
  apiserver_name = "minikubeCA"
  cache_images = "true"
  client_certificate = "<computed>"
  client_key = "<computed>"
  cluster_ca_certificate = "<computed>"
  container_runtime = "docker"
  cpus = "2"
  disable_driver_mounts = "true"
  disk_size = "20g"
  dns_domain = "cluster.local"
  endpoint = "<computed>"
  host_only_cidr = "192.168.99.1/24"
  iso_url = "https://storage.googleapis.com/minikube/iso/minikube-v0.23.5.iso"
  keep_context = "false"
  kubernetes_version = "v1.7.5"
  kvm_network = "default"
  memory = "2048"
  mount = "false"
  mount_string = "/Users:/minikube-host"
  vm_driver = "virtualbox"
  xhyve_disk_driver = "ahci-hd"

}

output "client_cert" {
  value = "${minikube.cluster.client_certificate}"
}

output "client_key" {
  value = "${minikube.cluster.client_key}"
}

output "ca_cert" {
  value = "${minikube.cluster.cluster_ca_certificate}"
}