resource "azurerm_consumption_budget_resource_group" "budget_rg" {
  name                = var.budget_name
  resource_group_id  = var.resource_group_id
  amount              = var.budget_amount
  time_grain          = var.time_grain

  time_period {
    start_date  = var.time_period_start
    start_date    = var.time_period_end
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
        resource_groups = lookup(var.filters, "resource_groups", null)
        meters          = lookup(var.filters, "meters", null)
        resource_tags   = lookup(var.filters, "resource_tags", null)
    }
    }

}
