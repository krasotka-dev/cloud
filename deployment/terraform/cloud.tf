resource "helm_release" "cloud_release" {
  name       = "${var.name}"
  chart      = "${var.chart}"
  version    = "${var.version}"
  
}