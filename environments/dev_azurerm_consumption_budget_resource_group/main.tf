module "azurerm_consumption_budget_resource_group" {
  source = "../../modules/azurerm_consumption_budget_resource_group"

    for_each = {
    for key, value in try(local.settings.azurerm_consumption_budget_resource_group, {}) : key => value
    if true
  }

  budget_name_rg         = each.value.budget_name_rg
  resource_group_id      = each.value.resource_group_id
  budget_amount_rg       = each.value.budget_amount_rg
  time_grain_rg          = each.value.time_grain_rg
  time_period_start      = each.value.time_period_start
  time_period_end        = each.value.time_period_end
  notification           = each.value.notification
  filters                = each.value.filters
  subscription_id        = each.value.subscription_id
  resource_group_name    = each.value.resource_group_name
  location               = each.value.location
  budget_name_sub        = each.value.budget_name_sub
  budget_amount_sub      = each.value.budget_amount_sub
  time_grain_sub         = each.value.time_grain_sub
  start_date             = each.value.start_date
  end_date               = each.value.end_date
  notification_1_threshold = each.value.notification_1_threshold
  notification_1_operator  = each.value.notification_1_operator
  notification_1_emails    = each.value.notification_1_emails
  notification_1_roles     = each.value.notification_1_roles
  notification_2_threshold = each.value.notification_2_threshold
  notification_2_operator  = each.value.notification_2_operator
  notification_2_emails    = each.value.notification_2_emails
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