resource "kubernetes_ingress" "common-ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "common-ingress"
  }
  spec {
    rule {
      http {
        path {
          path = "/foo"
          backend {
            service_name = kubernetes_service.hyphen-app-foo-svc.metadata.0.name
            service_port = 8080
          }
        }

        path {
          path = "/bar"
          backend {
            service_name = kubernetes_service.hyphen-app-bar-svc.metadata.0.name
            service_port = 8080
          }
        }
      }
    }
  }
}
