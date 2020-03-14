module "nextcloud_deploy" {
 source  = "fuchicorp/chart/helm"
  version = "0.0.3"
  deployment_name        = "nextcloud-deployment"
  deployment_environment = "dev"
  deployment_endpoint    = "nextcloud.fuchicorp.com"
  deployment_path        = "charts"
}