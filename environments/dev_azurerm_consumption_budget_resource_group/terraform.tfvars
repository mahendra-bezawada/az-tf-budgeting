resource_group_name     = "/subscriptions/bb81a390-6789-4184-a745-a5cfe71c2004/resourceGroups/rg-servers"
resource_group_location = "West US"

name    = "my-rg-budget"
budget_amount  = 150
time_grain     = "Monthly"

time_period_start = "2025-05-01T00:00:00Z"
time_period_end   = "2025-15-31T00:00:00Z"

notifications = {
  budget_alert = {
    enabled        = true
    operator       = "GreaterThan"
    threshold      = 80
    contact_emails = ["mahendra.bezawada@gmail.com"]
  }
}

filters = [
  {
    name   = "ResourceGroupName"
    values = ["rg-servers"]
  },
  {
    name   = "ServiceName"
    values = ["Virtual Machines"]
  }
]

