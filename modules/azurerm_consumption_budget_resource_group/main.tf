resource "azurerm_consumption_budget_resource_group" "budget_rg" {
  name                = var.name
  resource_group_name = var.resource_group_name
  amount              = var.amount
  time_grain          = var.time_grain

  time_period {
    start = var.time_period_start
    end   = var.time_period_end
  }

  dynamic "notifications" {
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
      resources       = lookup(var.filters, "resources", null)
    }
  }
}
