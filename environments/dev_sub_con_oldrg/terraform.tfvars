subscription_id            = "/subscriptions/bb81a390-6789-4184-a745-a5cfe71c2004"
resource_group_name        = "rg-servers"
location                   = "westus"

action_group_name          = "demo-actiongrp"
action_group_short_name    = "demoactngrp" #12characters only

budget_name                = "setbytf"
budget_amount              = 100
time_grain                 = "Monthly"
start_date                 = "2025-06-01T00:00:00Z"
end_date                   = "2025-06-30T00:00:00Z" #End date should be greater than or equal to the current date

# Optional filtering
# filter_tag_name            = "foo"
# filter_tag_values          = ["bar", "baz"]

notification_1_threshold   = 80.0
notification_1_operator    = "EqualTo"
notification_1_emails      = ["mahendra.bezawada@gmail.com"]
notification_1_roles       = ["Owner"]

notification_2_threshold   = 90.0
notification_2_operator    = "GreaterThan"
notification_2_emails      = ["mahendra.bezawada@gmail.com"]
