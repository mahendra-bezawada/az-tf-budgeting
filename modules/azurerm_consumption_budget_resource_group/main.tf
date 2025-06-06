resource "azurerm_consumption_budget_resource_group" "budget_rg" {
  name                = var.budget_name_rg
  resource_group_id  = var.resource_group_id
  amount              = var.budget_amount_rg
  time_grain          = var.time_grain_rg

  time_period {
    start_date  = var.time_period_start
    end_date    = var.time_period_end
  }

  dynamic "notification" {
    for_each = var.notification
    content {
      enabled        = lookup(notification.value, "enabled", true)
      operator       = notification.value.operator
      threshold      = notification.value.threshold
      contact_emails = notification.value.contact_emails
    }
  }

    dynamic "filter" {
      for_each = var.filters != null ? [1] : []
      content {
        dynamic "dimension" {
          for_each = var.filters
          content {
            name   = dimension.value.name
            values = dimension.value.values
          }
        }
      }
    }

}


#subscrption budget
resource "azurerm_consumption_budget_subscription" "example" {
  name            = var.budget_name_sub
  subscription_id = var.subscription_id

  amount     = var.budget_amount_sub
  time_grain = var.time_grain_sub

  time_period {
    start_date = var.start_date
    end_date   = var.end_date
  }


  notification {
    enabled         = true
    threshold       = var.notification_1_threshold
    operator        = var.notification_1_operator
    contact_emails  = var.notification_1_emails
    contact_groups  = [azurerm_monitor_action_group.example.id]
    contact_roles   = var.notification_1_roles
  }

  notification {
    enabled         = false
    threshold       = var.notification_2_threshold
    operator        = var.notification_2_operator
    threshold_type  = "Forecasted"
    contact_emails  = var.notification_2_emails
  }
}
