variable "name" {
  type = string
}

variable "amount" {
  type = number
}

variable "resource_group_name" {
  description = "The name of the resource group to apply the budget to."
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID for which the budget applies."
  type        = string
}

variable "amount" {
  description = "The budget amount (e.g., in USD)."
  type        = number
}

variable "time_grain" {
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

variable "notifications" {
  description = "A map of notification configurations keyed by name."
  type = map(object({
    enabled        = bool
    operator       = string
    threshold      = number
    contact_emails = list(string)
  }))
  default = {}
}

variable "filters" {
  description = "Optional filters to limit the scope of the budget."
  type = object({
    resource_groups = list(string)
    resources       = list(string)
  })
  default = null
}
