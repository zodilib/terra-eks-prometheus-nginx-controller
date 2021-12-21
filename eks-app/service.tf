resource "kubernetes_service" "hyphen-app-foo-svc" {
  metadata {
    name = "hyphen-foo"
  }
  spec {
    selector = {
      App = kubernetes_deployment.hyphen-app-foo.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}

resource "kubernetes_service" "hyphen-app-bar-svc" {
  metadata {
    name = "hyphen-bar"
  }
  spec {
    selector = {
      App = kubernetes_deployment.hyphen-app-bar.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}


