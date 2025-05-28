variable "budget_name" {
  description = "Name of the budget."
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}

variable "budget_amount" {
  description = "Monthly budget amount in USD."
  type        = number
}

variable "start_date" {
  description = "Start date for the budget (YYYY-MM-DD)."
  type        = string
}

variable "contact_emails" {
  description = "List of email addresses for budget notifications."
  type        = list(string)
}

# Optional: Uncomment if using filters
# variable "resource_groups" {
#   description = "List of resource groups to scope the budget."
#   type        = list(string)
#   default     = []
# }
