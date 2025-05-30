resource "azurerm_consumption_budget_resource_group" "budget_rg" {
  name                = var.budget_name
  resource_group_id  = var.resource_group_id
  amount              = var.budget_amount
  time_grain          = var.time_grain

  time_period {
    start_date  = var.time_period_start
    end_date    = var.time_period_end
  }

  dynamic "notification" {
    for_each = var.notifications
    content {
      enabled        = lookup(notifications.value, "enabled", true)
      operator       = notifications.value.operator
      threshold      = notifications.value.threshold
      contact_emails = notifications.value.contact_emails
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
