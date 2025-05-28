data "azurerm_subscription" "current" {}

resource "azurerm_monitor_action_group" "example" {
  name                = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name          = var.action_group_short_name
}

resource "azurerm_consumption_budget_subscription" "example" {
  name            = var.budget_name
  subscription_id = data.azurerm_subscription.current.id

  amount     = var.budget_amount
  time_grain = var.time_grain

  time_period {
    start_date = var.start_date
    end_date   = var.end_date
  }

   /*
    # enable for filters
  filter {
    dimension {
      name   = "ResourceGroupName"
      values = [var.resource_group_name]
    }
 
    tag {
      name   = var.filter_tag_name
      values = var.filter_tag_values
    }

  }
      */

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