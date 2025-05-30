module "azurerm_consumption_budget_resource_group" {
  source = "../../modules/azurerm_consumption_budget_resource_group"

  budget_name                = var.budget_name
  resource_group_id = var.resource_group_id
  budget_amount              = var.budget_amount
  time_grain          = var.time_grain
  time_period_start   = var.time_period_start
  time_period_end     = var.time_period_end
  notification       = var.notifications
  filters             = var.filters
}
