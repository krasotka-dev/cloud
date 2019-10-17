data "template_file" "chart_cloud_values" {
  template = "${file("./chart-cloud/template_values.yaml")}"
  vars = {
    domain_name = "${var.domain_name}"
    docker_image = "${var.docker_image}"
    docker_image_tag = "${var.docker_image_tag}"
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
  namespace = "${var.namespace}"

 values = [
    "${data.template_file.chart_cloud_values.rendered}"
  ]
}