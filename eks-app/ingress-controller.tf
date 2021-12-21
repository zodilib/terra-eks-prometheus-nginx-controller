resource "helm_release" "nginx-controller" {
  name       = "nginx-ingress-controller"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.0.13"

  values = [
    "${file("values.yaml")}"
  ]
}