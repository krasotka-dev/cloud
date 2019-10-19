variable "name" {
  default = "chart-cloud"
}
variable "chart" {
    default = "./chart-cloud"
  
}
variable "version" {
    default = "6.0.1"
  
}
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