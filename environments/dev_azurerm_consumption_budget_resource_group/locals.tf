locals {
  settings_file = file("./settings.yaml")
  settings      = yamldecode(local.settings_file)

  budget = local.settings.azurerm_consumption_budget_resource_group
}
