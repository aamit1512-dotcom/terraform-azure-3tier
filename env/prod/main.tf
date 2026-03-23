module "rg" {
  source   = "../../modules/resource_group"
  name     = "prod-rg"
  location = "Central India"
}

module "plan" {
  source              = "../../modules/app_service_plan"
  name                = "prod-plan"
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
}

module "backend" {
  source              = "../../modules/web_app"
  name                = "prod-backend"
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
  service_plan_id     = module.plan.plan_id
  docker_image        = "aamitdevops/node-app:latest"
}