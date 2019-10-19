data "template_file" "chart_cloud_values" {
  template = "${file("./chart-cloud/template_values.yaml")}"
  vars = {
    docker_image = "${var.deployment_image}"
    deployment_endpoint = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"

  }
}

resource "local_file" "chart_cloud_values_local_file" {
  content  = "${trimspace(data.template_file.chart_cloud_values.rendered)}"
  filename = "./chart-cloud/.cache/values.yaml"
}
resource "helm_release" "chart_cloud" {
  name       = "${var.name}"
  chart      = "${var.chart}"
  version    = "${var.version}"
  namespace = "${var.deployment_environment}"

 values = [
    "${data.template_file.chart_cloud_values.rendered}"
  ]
}
