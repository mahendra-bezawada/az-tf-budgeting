resource_group_id     = "/subscriptions/bb81a390-6789-4184-a745-a5cfe71c2004/resourceGroups/rg-servers"
// resource_group_location = "West US"

budget_name_sub    = "my-rg-budget"
budget_amount_sub  = 150
time_grain_sub     = "Monthly"

time_period_start = "2025-06-01T00:00:00Z"
time_period_end   = "2025-06-30T00:00:00Z"

notification = {
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


#SubscriptionConsumption Variables
subscription_id            = "/subscriptions/bb81a390-6789-4184-a745-a5cfe71c2004"
resource_group_name        = "rg-servers"
location                   = "westus"


budget_name_rg                = "setbytf"
budget_amount_rg              = 100
time_grain_rg                 = "Monthly"
start_date                 = "2025-06-01T00:00:00Z"
end_date                   = "2025-06-30T00:00:00Z" #End date should be greater than or equal to the current date


notification_1_threshold   = 80.0
notification_1_operator    = "EqualTo"
notification_1_emails      = ["mahendra.bezawada@gmail.com"]
notification_1_roles       = ["Owner"]

notification_2_threshold   = 90.0
notification_2_operator    = "GreaterThan"
notification_2_emails      = ["mahendra.bezawada@gmail.com"]


