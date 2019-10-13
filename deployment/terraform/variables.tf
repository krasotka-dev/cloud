variable "name" {
  default = "cloud"
}
variable "chart" {
    default = "chart-cloud"
  }
variable "version" {
    default = "6.0.1"
  }
variable "docker_image" {
  default = " nextcloud"
  }
variable "docker_image_tag" {
  default = "latest"
  }
variable "domain_name" {
  default = "test-cloud.fuchicorp.com"
}
variable "namespace" {
  default = "test"
}


