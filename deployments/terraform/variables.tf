variable "deployment_image" {
  default = "nextcloud"
  
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