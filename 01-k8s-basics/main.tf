terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

resource "kubernetes_namespace" "app" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_deployment" "flask" {
  metadata {
    name      = "flask-app"
    namespace = kubernetes_namespace.app.metadata[0].name
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = "flask-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "flask-app"
        }
      }

      spec {
        container {
          name  = "flask"
          image = "bsathish24/flask-app:${var.image_tag}"

          port {
            container_port = 5000
          }

          env {
            name  = "APP_ENV"
            value = var.app_env
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "flask" {
  metadata {
    name      = "flask-service"
    namespace = kubernetes_namespace.app.metadata[0].name
  }

  spec {
    selector = {
      app = "flask-app"
    }

    port {
      port        = 80
      target_port = 5000
    }

    type = "NodePort"
  }
}
