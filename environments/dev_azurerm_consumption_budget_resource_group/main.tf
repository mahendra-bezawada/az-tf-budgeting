module "azurerm_consumption_budget_resource_group" {
  source = "../../modules/azurerm_consumption_budget_resource_group"

  budget_name_rg         = local.azurerm_consumption_budget_resource_group.budget_name_rg
  resource_group_id      = local.azurerm_consumption_budget_resource_group.resource_group_id
  budget_amount_rg       = local.azurerm_consumption_budget_resource_group.budget_amount_rg
  time_grain_rg          = local.azurerm_consumption_budget_resource_group.time_grain_rg
  time_period_start      = local.azurerm_consumption_budget_resource_group.time_period_start
  time_period_end        = local.azurerm_consumption_budget_resource_group.time_period_end
  notification           = local.azurerm_consumption_budget_resource_group.notification
  filters                = local.azurerm_consumption_budget_resource_group.filters

  subscription_id            = local.azurerm_consumption_budget_resource_group.subscription_id
  resource_group_name        = local.azurerm_consumption_budget_resource_group.resource_group_name
  location                   = local.azurerm_consumption_budget_resource_group.location

  budget_name_sub            = local.azurerm_consumption_budget_resource_group.budget_name_sub
  budget_amount_sub          = local.azurerm_consumption_budget_resource_group.budget_amount_sub
  time_grain_sub             = local.azurerm_consumption_budget_resource_group.time_grain_sub
  start_date                 = local.azurerm_consumption_budget_resource_group.start_date
  end_date                   = local.azurerm_consumption_budget_resource_group.end_date
  notification_1_threshold   = local.azurerm_consumption_budget_resource_group.notification_1_threshold
  notification_1_operator    = local.azurerm_consumption_budget_resource_group.notification_1_operator
  notification_1_emails      = local.azurerm_consumption_budget_resource_group.notification_1_emails
  notification_1_roles       = local.azurerm_consumption_budget_resource_group.notification_1_roles
  notification_2_threshold   = local.azurerm_consumption_budget_resource_group.notification_2_threshold
  notification_2_operator    = local.azurerm_consumption_budget_resource_group.notification_2_operator
  notification_2_emails      = local.azurerm_consumption_budget_resource_group.notification_2_emails
}



/*
module "azurerm_consumption_budget_resource_group" {
  source = "../../modules/azurerm_consumption_budget_resource_group"

  budget_name_rg                = var.budget_name_rg
  resource_group_id = var.resource_group_id
  budget_amount_rg              = var.budget_amount_rg
  time_grain_rg          = var.time_grain_rg
  time_period_start   = var.time_period_start
  time_period_end     = var.time_period_end
  notification       = var.notification
  filters             = var.filters

  subscription_id            = var.subscription_id
  resource_group_name        = var.resource_group_name
  location                   = var.location

  #action_group_name          = var.action_group_name
  #action_group_short_name    = var.action_group_short_name

  budget_name_sub                = var.budget_name_sub
  budget_amount_sub              = var.budget_amount_sub
  time_grain_sub                 = var.time_grain_sub
  start_date                 = var.start_date
  end_date                   = var.end_date
  notification_1_threshold   = var.notification_1_threshold
  notification_1_operator    = var.notification_1_operator
  notification_1_emails      = var.notification_1_emails
  notification_1_roles       = var.notification_1_roles
  notification_2_threshold   = var.notification_2_threshold
  notification_2_operator    = var.notification_2_operator
  notification_2_emails      = var.notification_2_emails
}
*/