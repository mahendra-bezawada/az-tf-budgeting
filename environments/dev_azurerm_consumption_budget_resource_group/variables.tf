variable "budget_name_rg" {
  type = string
}


variable "resource_group_id" {
  description = "The name of the resource group to apply the budget to."
  type        = string
}

variable "budget_amount_rg" {
  description = "The budget amount (e.g., in USD)."
  type        = number
}

variable "time_grain_rg" {
  description = "The time grain of the budget. Allowed values: Monthly, Quarterly, Annually."
  type        = string
}

variable "time_period_start" {
  description = "Start date of the budget period in RFC3339 format (e.g., 2024-01-01T00:00:00Z)."
  type        = string
}

variable "time_period_end" {
  description = "End date of the budget period in RFC3339 format (e.g., 2024-12-31T00:00:00Z)."
  type        = string
}

variable "notification" {
  description = "A map of notification configurations keyed by name."
  type = map(object({
    enabled        = bool
    operator       = string
    threshold      = number
    contact_emails = list(string)
  }))

  default = {
    default = {
      enabled        = true
      operator       = "GreaterThan"
      threshold      = 90
      contact_emails = ["mahendra.bezawada@gmail.com"]
    }
  }
}

variable "filters" {
  description = "Optional dimensions to filter the scope of the budget."
  type = list(object({
    name   = string
    values = list(string)
  }))
  default = null
}


variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}
/*
variable "action_group_name" {
  description = "Name of the monitor action group"
  type        = string
}

variable "action_group_short_name" {
  description = "Short name for the action group"
  type        = string
}
*/
variable "budget_name_sub" {
  description = "Name of the consumption budget"
  type        = string
}

variable "budget_amount_sub" {
  description = "Amount for the budget"
  type        = number
}

variable "time_grain_sub" {
  description = "Time grain for the budget (Monthly/Quarterly/etc.)"
  type        = string
}


variable "start_date" {
  description = "Start date of the budget period"
  type        = string
}

variable "end_date" {
  description = "End date of the budget period"
  type        = string
}


variable "notification_1_threshold" {
  type        = number
  description = "Threshold for the first notification"
}

variable "notification_1_operator" {
  type        = string
  description = "Operator for the first notification"
}

variable "notification_1_emails" {
  type        = list(string)
  description = "Emails for the first notification"
}

variable "notification_1_roles" {
  type        = list(string)
  description = "Roles for the first notification"
}

variable "notification_2_threshold" {
  type        = number
  description = "Threshold for the second notification"
}

variable "notification_2_operator" {
  type        = string
  description = "Operator for the second notification"
}

variable "notification_2_emails" {
  type        = list(string)
  description = "Emails for the second notification"
}