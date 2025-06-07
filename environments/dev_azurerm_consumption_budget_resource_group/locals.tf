locals {
  settings = yamldecode(file("./settings.yaml"))
  azurerm_consumption_budget_resource_group = try(local.settings.azurerm_consumption_budget_resource_group, {})
}
