variable "name" {}
variable "location" {}
variable "resource_group_name" {}

resource "azurerm_service_plan" "plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "B1"
}

output "plan_id" {
  value = azurerm_service_plan.plan.id
}