provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "python" {
  metadata {
    name      = "random-number-generator"
    namespace = "randnumb"
    labels = {
      app = "random-number-generator"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "random-number-generator"
      }
    }

    template {
      metadata {
        labels = {
          app = "random-number-generator"
        }
      }

      spec {
        container {
          name  = "random-number-generator"
          image = "keithgan94/random-number-generator:v2.0"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "python" {
  metadata {
    name      = "random-number-generator"
    namespace = "randnumb"
  }

  spec {
    selector = {
      app = "random-number-generator"
    }

    port {
      port         = 8080
      target_port   = 8080
    }

    type = "NodePort"
  }
}
