resource "helm_release" "cloud_services_ingress" {

  name = "cloud-services-ingress-${var.deployment_environment}"
  namespace = "${var.deployment_environment}"
  chart = "./helm-deployment"

  set {
    name = "dns_endpoint"
    value = "${lookup(var.dns_endpoint_cloud, "${var.deployment_environment}")}"
  }

  set {
    name = "cloud_service"
    value = "${kubernetes_service.cloud_service.metadata.0.name}"
  }

  set {
    name = "cloud_port"
    value = "${kubernetes_service.cloud_service.spec.0.port.0.port}"
  }


  set {
    name = "email"
    value = "${var.lets_encrypt_email}"
  }

}
