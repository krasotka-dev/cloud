variable "deployment_environment" {
  default = "prod"
}

variable "dns_endpoint_cloud" {
  type = "map"

  default = {
    dev  = "dev.cloud.fuchicorp.com"
    qa   = "qa.cloud.fuchicorp.com"
    prod = "cloud.fuchicorp.com"
  }
}

variable "cloud_image" {
  default = "nextcloud"
}

variable "lets_encrypt_email" {
  default = "fuchicorpsolutions@gmail.com"
}
