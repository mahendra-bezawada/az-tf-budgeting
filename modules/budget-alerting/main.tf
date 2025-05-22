resource "azurerm_consumption_budget_subscription" "budget" {
  name            = var.budget_name
  subscription_id = var.subscription_id
  amount          = var.budget_amount
  time_grain      = "Monthly"

  time_period {
    start_date = var.start_date
  }

  filter {
    # Optional: Add filters like resource groups or meters
    # resource_groups = var.resource_groups
  }

  notification {
    enabled        = true
    operator       = "GreaterThan"
    threshold      = 80.0
    contact_emails = var.contact_emails
  }

  notification {
    enabled        = true
    operator       = "GreaterThan"
    threshold      = 100.0
    contact_emails = var.contact_emails
  }
}
