module "azure_budget_alert" {
  source                      = "../../modules/subscription-consumption-oldrg"
  subscription_id            = var.subscription_id
  resource_group_name        = var.resource_group_name
  location                   = var.location

  action_group_name          = var.action_group_name
  action_group_short_name    = var.action_group_short_name

  budget_name                = var.budget_name
  budget_amount              = var.budget_amount
  time_grain                 = var.time_grain
  start_date                 = var.start_date
  end_date                   = var.end_date

  # filter_tag_name            = var.filter_tag_name
  # filter_tag_values          = var.filter_tag_values

  notification_1_threshold   = var.notification_1_threshold
  notification_1_operator    = var.notification_1_operator
  notification_1_emails      = var.notification_1_emails
  notification_1_roles       = var.notification_1_roles

  notification_2_threshold   = var.notification_2_threshold
  notification_2_operator    = var.notification_2_operator
  notification_2_emails      = var.notification_2_emails
}
