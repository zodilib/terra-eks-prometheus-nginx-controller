resource "kubernetes_deployment" "hyphen-app-foo" {
  metadata {
    name = "scalable-hyphen-foo-deployment"
    labels = {
      App = "hyphen-foo"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "hyphen-foo"
      }
    }
    template {
      metadata {
        labels = {
          App = "hyphen-foo"
        }
      }
      spec {
        container {
          image = "hashicorp/http-echo:v0.2.3"
          args = [
          "-text",
          "'foo'",
          "-listen",
          ":8080",
          ]
          name  = "hyphen-foo"

          port {
            container_port = 8080
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}



resource "kubernetes_deployment" "hyphen-app-bar" {
  metadata {
    name = "scalable-hyphen-bar-deployment"
    labels = {
      App = "hyphen-bar"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "hyphen-bar"
      }
    }
    template {
      metadata {
        labels = {
          App = "hyphen-bar"
        }
      }
      spec {
        container {
          image = "hashicorp/http-echo:v0.2.3"
          args = [
          "-text",
          "'bar'",
          "-listen",
          ":8080",
          ]
          name  = "hyphen-bar"

          port {
            container_port = 8080
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
