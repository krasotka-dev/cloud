resource "kubernetes_service" "cloud_service" {

  metadata {
    name = "cloud-service"
    namespace = "${var.deployment_environment}"
  }

  spec {
    selector { run = "cloud"  }

    port {
      port = 7106
      target_port = 80
    }

    type = "ClusterIP"
  }
}
