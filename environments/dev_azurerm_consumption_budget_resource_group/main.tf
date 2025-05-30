module "azurerm_consumption_budget_resource_group" {
  source = "../../modules/azurerm_consumption_budget_resource_group"

  budget_name                = var.budget_name
  resource_group_name = var.resource_group_name
  subscription_id       = var.subscription_id
  budget_amount              = var.budget_amount
  time_grain          = var.time_grain
  time_period_start   = var.time_period_start
  time_period_end     = var.time_period_end
  notifications       = var.notifications
  filters             = var.filters
}
