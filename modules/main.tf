module "rg" {
  source   = "./modules/resource_group"
  name     = "devops-rg"
  location = "Central India"
}

module "plan" {
  source              = "./modules/app_service_plan"
  name                = "devops-plan"
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
}

module "backend" {
  source              = "./modules/web_app"
  name                = "backend-app-amit123"
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
  service_plan_id     = module.plan.plan_id
  docker_image        = "aamitdevops/node-app:latest"
}

module "frontend" {
  source              = "./modules/web_app"
  name                = "frontend-app-amit123"
  location            = module.rg.location
  resource_group_name = module.rg.rg_name
  service_plan_id     = module.plan.plan_id
  docker_image        = "nginx"
}