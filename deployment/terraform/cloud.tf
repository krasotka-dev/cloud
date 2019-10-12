data "template_file" "cloud" {
  template = "${file("./chart-cloud/values.yaml")}"
  vars = {
    domain_name = "${var.domain_name}"
    docker_image = "${var.docker_image}"
    docker_image_tag = "${var.docker_image_tag}"
  }
  

resource "helm_release" "cloud_release" {
  name       = "${var.name}"
  chart      = "${var.chart}"
  version    = "${var.version}"

 values = [
    "${file("./chart-cloud/.cache/values.yaml")}"
  ]
}
}
