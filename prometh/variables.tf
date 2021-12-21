variable "kube_config" {
  type = string
  default = "~/.kube/config"
}

variable "namespace" {
  type = string
  default = "monitoring"
}

variable "grafana_password" {
  type = string
  default = "admin"
}

variable "cluster_id" {}

variable "region" {}