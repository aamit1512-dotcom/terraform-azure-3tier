variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "service_plan_id" {}
variable "docker_image" {}

resource "azurerm_linux_web_app" "app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    application_stack {
      docker_image_name = var.docker_image
    }
  }
}

output "url" {
  value = azurerm_linux_web_app.app.default_hostname
}