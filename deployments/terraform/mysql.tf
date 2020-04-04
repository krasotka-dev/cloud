module "mysql_deploy" {
 source  = "fuchicorp/chart/helm"
  version = "0.0.3"
  deployment_name        = "mysql-deployment"
  deployment_environment = "dev"
  deployment_endpoint    =  "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "mysql"

    template_custom_vars = {
    deployment_image = "mysql"
    image_tag  =  "5.7.27"
  }

    env_vars = {
        mysql_user     = "fuchicorp-user"
        mysql_host     = "127.0.0.1"
        mysql_database = "nextcloud-db"
        mysql_password = "password"


    }
}
