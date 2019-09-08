resource "kubernetes_deployment" "cloud-deployment" {

  metadata {
    namespace = "${var.deployment_environment}"
    name = "cloud-deployment"
    labels { run = "cloud" }
  }

  spec {
    replicas = 1
    selector {
      match_labels { run = "cloud" } }

    template {
      metadata {
        labels { run = "cloud" }
      }

      spec {
        image_pull_secrets = [ { name = "nexus-creds" } ]

        container {
          image             = "${var.cloud_image}"
          name              = "cloud-container"
          image_pull_policy = "Always"
        }
      }
    }
  }
}
