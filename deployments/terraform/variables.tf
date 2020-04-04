  variable "deployment_image" {
    default = "nextcloud"
}

variable "image_tag" {
  default = "5.7.27"
  
}

variable "deployment_environment" {
  default = "dev"
}


variable "deployment_endpoint" {
  type = "map"

  default = {
    dev  = "dev.cloud.fuchicorp.com"
    qa   = "qa.cloud.fuchicorp.com"
    prod = "cloud.fuchicorp.com"
  }
}